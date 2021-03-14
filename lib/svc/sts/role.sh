# shellcheck shell=bash
######################################################################
#<
#
# Function: p6_aws_svc_sts_role_assume(role_arn, role_session_name)
#
#  Args:
#	role_arn -
#	role_session_name -
#
#>
######################################################################
p6_aws_svc_sts_role_assume() {
    local role_arn="$1"
    local role_session_name="$2"

    local json

    json=$(p6_aws_cli_cmd sts assume-role --role-arn "$role_arn" --role-session-name "$role_session_name")

    p6_aws_svc_sts_role_credentials_activate "$json" "$role_arn" "$role_session_name" "sts"

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_svc_sts_role_federation_assume(profile)
#
#  Args:
#	profile -
#
#>
######################################################################
p6_aws_svc_sts_role_federation_assume() {
    local profile="$1"

    local json
    json=$(p6_aws_cli_cmd sts get-federation-token --name p6cli --profile "$profile")

    p6_aws_svc_sts_role_credentials_activate "$json" "$profile" "p6cli" "federation"

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_svc_sts_role_credentials_activate(json, role_arn, role_session_name, type)
#
#  Args:
#	json -
#	role_arn - aka profile
#	role_session_name -
#	type -
#
#>
######################################################################
p6_aws_svc_sts_role_credentials_activate() {
    local json="$1"
    local role_arn="$2" # aka profile
    local role_session_name="$3"
    local type="$4"

    local access_key_id
    local secret_access_key
    local session_token
    local expiration
    local conf_file
    local cred_file
    local org
    local name

    # The "destination"
    org=$(p6_aws_env_org_active)
    name="$org-$type"

    # Parse
    access_key_id=$(p6_json_eval "$json" "-r" ".Credentials.AccessKeyId")
    secret_access_key=$(p6_json_eval "$json" "-r" ".Credentials.SecretAccessKey")
    session_token=$(p6_json_eval "$json" "-r" ".Credentials.SessionToken")
    expiration=$(p6_json_eval "$json" "-r" ".Credentials.Expiration")

    # Mock the New Env
    p6_aws_cfg_save_source
    p6_aws_util_env_shared_credentials_file "$name"
    p6_aws_util_env_config_file "$name"

    # Get a handle to the files
    conf_file=$(p6_aws_env_config_file_active)
    cred_file=$(p6_aws_env_shared_credentials_file_active)

    # Clean Slate
    p6_file_rmf "$conf_file"
    p6_file_rmf "$cred_file"

    # Write it out
    p6_aws_profile_config_add "$conf_file" "$role_arn"
    p6_aws_profile_cred_add "$cred_file" "$role_arn" "$access_key_id" "$secret_access_key" "$session_token" "$expiration"

    # Tell the World
    p6_aws_util_env_profile "$role_arn" >/dev/null

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_svc_sts_role_assume_un()
#
#>
######################################################################
p6_aws_svc_sts_role_assume_un() {

    p6_aws_cfg_restore_source

    p6_return_void
}

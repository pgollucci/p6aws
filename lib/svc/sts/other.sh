######################################################################
#<
#
# Function: p6_aws_sts_svc_whoami()
#
#>
######################################################################
p6_aws_sts_svc_whoami() {

    p6_aws_cmd sts get-caller-identity

    p6_return_void
}

######################################################################
#<
#
# Function: obj creds = p6_aws_sts_svc_json_role_load(json_role_file)
#
#  Args:
#	json_role_file -
#
#  Returns:
#	obj - creds
#
#>
######################################################################
p6_aws_sts_svc_json_role_load() {
    local json_role_file="$1"

    local aws_access_key_id=$(p6_json_key_2_value "AccessKeyId" "$json_role_file")
    local aws_secret_access_key=$(p6_json_key_2_value "SecretAccessKey" "$json_role_file")
    local aws_session_token=$(p6_json_key_2_value "SessionToken" "$json_role_file")
    local expiration=$(p6_json_key_2_value "Expiration" "$json_role_file")

    local creds=$(p6_obj_create "hash")
    local o1=$(p6_obj_item_set "$creds" "aws_access_key_id" "$aws_access_key_id")
    local o2=$(p6_obj_item_set "$creds" "aws_secret_access_key" "$aws_secret_access_key")
    local o3=$(p6_obj_item_set "$creds" "aws_session_token" "$aws_session_token")
    local o4=$(p6_obj_item_set "$creds" "expiration" "$expiration")

    p6_return_obj "$creds"
}

######################################################################
#<
#
# Function: str fn_profile = p6_aws_sts_svc_profile_build(org, account_alias, role_arn)
#
#  Args:
#	org -
#	account_alias -
#	role_arn -
#
#  Returns:
#	str - fn_profile
#
#>
######################################################################
p6_aws_sts_svc_profile_build() {
    local org="$1"
    local account_alias="$2"
    local role_arn="$3"

    local role_name=$(p6_echo "$role_arn" | sed -e 's,.*:,,')

    local profile="${org}+${account_alias}-${role_name}"
    local fn_profile=$(p6_aws_shortcuts_profile_to_fn "$profile")

    p6_aws_sts__debug "profile_build(): [profile=$fn_profile]"

    p6_return_str "$fn_profile"
}

######################################################################
#<
#
# Function: obj role = p6_aws_sts_svc_assertion_decode(assertion64)
#
#  Args:
#	assertion64 -
#
#  Returns:
#	obj - role
#
#>
######################################################################
p6_aws_sts_svc_assertion_decode() {
    local assertion64="$1"

    local role_provider=$(p6_echo "$assertion64" | base64 -D | sed -e 's,.*>arn,arn,' -e 's,\<.*,,')
    p6_aws_sts__debug "assertion_decode(): [role_provider=$role_provider]"

    local role_arn=$(p6_echo "$role_provider" | cut -d , -f 1)
    local principal_arn=$(p6_echo "$role_provider" | cut -d , -f 2)
    p6_aws_sts__debug "assertion_decode(): [role_arn=$role_arn]"
    p6_aws_sts__debug "assertion_decode(): [principal_arn=$principal_arn]"

    local role=$(p6_obj_create "hash")
    local o1=$(p6_obj_item_set "$role" "role_arn" "$role_arn")
    local o2=$(p6_obj_item_set "$role" "principal_arn" "$principal_arn")

    p6_return_obj "$role"
}

######################################################################
#<
#
# Function: str assertion64 = p6_aws_sts_svc_login_saml(auth)
#
#  Args:
#	auth -
#
#  Returns:
#	str - assertion64
#
#>
######################################################################
p6_aws_sts_svc_login_saml() {
    local auth="$1"

    local idp="jc"

    local assertion64
    case $idp in
    jc) assertion64=$(p6_jc_saml_login "$auth") ;;
    esac

    p6_return_str "$assertion64"
}
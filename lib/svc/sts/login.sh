######################################################################
#<
#
# Function: p6_aws_svc_sts_login(login, [account_alias=$AWS_ORG], [org=$AWS_ORG], [auth_type=saml])
#
#  Args:
#	login -
#	OPTIONAL account_alias - [$AWS_ORG]
#	OPTIONAL org - [$AWS_ORG]
#	OPTIONAL auth_type - [saml]
#
#>
######################################################################
p6_aws_svc_sts_login() {
    local login="$1"
    local account_alias="${2:-$AWS_ORG}"
    local org="${3:-$AWS_ORG}"
    local auth_type="${4:-saml}"

    local region=$(p6_aws_svc_sts_region)
    local output=$(p6_aws_svc_sts_output)
    local cred_file=$(p6_aws_svc_sts_cred_file)

    p6_msg "Password($login): \c"
    local password=$(p6_int_password_read)

    local auth=$(p6_obj_create "hash")
    p6_obj_persist "$auth"
    local o1=$(p6_obj_item_set "$auth" "login" "$login")
    local o2=$(p6_obj_item_set "$auth" "password" "$password")
    local o3=$(p6_obj_item_set "$auth" "account_alias" "$account_alias")
    local o4=$(p6_obj_item_set "$auth" "org" "$org")
    local o5=$(p6_obj_item_set "$auth" "region" "$region")
    local o6=$(p6_obj_item_set "$auth" "output" "$output")

    p6_file_rmf "$cred_file"
    p6_aws_cfg_reset

    case $auth_type in
	saml)
	    local assertion64=$(p6_aws_svc_sts_login_saml "$auth")
	    p6_aws_svc_sts_role_assume_saml "$auth" "$assertion64"
	    ;;
    esac

    p6_aws_shortcuts_gen "$org" "$cred_file" > ${cred_file}.me
    p6_run_code "$(p6_file_display ${cred_file}.me)"
    p6_file_rmf ${cred_file}.me

    p6_return_void
}

######################################################################
#<
#
# Function: str role_arn = p6_aws_svc_sts_role_assume_saml(auth, assertion64)
#
#  Args:
#	auth -
#	assertion64 -
#
#  Returns:
#	str - role_arn
#
#>
######################################################################
p6_aws_svc_sts_role_assume_saml() {
    local auth="$1"
    local assertion64="$2"

    local role=$(p6_aws_svc_sts_assertion_decode "$assertion64")
    local role_arn=$(p6_obj_item_get "$role" "role_arn")
    local principal_arn=$(p6_obj_item_get "$role" "principal_arn")

    local json_role_file=$(p6_transient_create_file "assume.json")
    p6_aws_cli_cmd sts assume-role-with-saml --role-arn "$role_arn" --principal-arn "$principal_arn" --saml-assertion "$assertion64" > $json_role_file

    local creds=$(p6_aws_svc_sts_json_role_load "$json_role_file")

    local aws_access_key_id=$(p6_obj_item_get "$creds" "aws_access_key_id")
    local aws_secret_access_key=$(p6_obj_item_get "$creds" "aws_secret_access_key")
    local aws_session_token=$(p6_obj_item_get "$creds" "aws_session_token")
    local expiration=$(p6_obj_item_get "$creds" "expiration")

    local account_alias=$(p6_obj_item_get "$auth" "account_alias")
    local org=$(p6_obj_item_get "$auth" "org")
    local region=$(p6_obj_item_get "$auth" "region")
    local output=$(p6_obj_item_get "$auth" "output")

    local fn_profile=$(p6_aws_svc_sts_profile_build "$org" "$account_alias" "$role_arn")

    local cred_file=$(p6_aws_svc_sts_cred_file)
    p6_aws_template_process "sts/profile" \
			    "PROFILE=$fn_profile" \
			    "REGION=$region" \
			    "OUTPUT=$output" \
			    "AWS_ACCESS_KEY=$aws_access_key_id" \
			    "AWS_SECRET_ACCESS_KEY=$aws_secret_access_key" \
			    "AWS_SESSION_TOKEN=$aws_session_token" \
			    "EXPIRATION=$expiration" > $cred_file

    p6_return_str "$role_arn"
}
######################################################################
#<
#
# Function: p6_aws_sts_svc_role_assume(role_arn, role_session_name)
#
#  Args:
#	role_arn -
#	role_session_name -
#
#>
######################################################################
p6_aws_sts_svc_role_assume() {
    local role_arn="$1"
    local role_session_name="$2"

    # save it
    p6_aws_cfg_save_source

    # assume it or fail
    local json_role_file=$(p6_transient_create_file "assume.json")
    p6_aws_cmd sts assume-role --role-arn "$role_arn" --role-session-name $role_session_name > $json_role_file

    local creds=$(p6_aws_sts_svc_json_role_load "$json_role_file")

    local region=$(p6_aws_sts_svc_region)
    local output=$(p6_aws_sts_svc_output)

    local aws_access_key_id=$(p6_obj_item_get "$creds" "aws_access_key_id")
    local aws_secret_access_key=$(p6_obj_item_get "$creds" "aws_secret_access_key")
    local aws_session_token=$(p6_obj_item_get "$creds" "aws_session_token")
    local expiration=$(p6_obj_item_get "$creds" "expiration")

    local fn_profile=$(p6_aws_sts_svc_profile_build "unk" "assumed" "$role_arn")

    local cred_file=$(p6_aws_sts_svc_cred_file)
    p6_aws_template_process "sts/profile" \
			    "PROFILE=$fn_profile" \
			    "REGION=$region" \
			    "OUTPUT=$output" \
			    "AWS_ACCESS_KEY=$aws_access_key_id" \
			    "AWS_SECRET_ACCESS_KEY=$aws_secret_access_key" \
			    "AWS_SESSION_TOKEN=$aws_session_token" \
			    "EXPIRATION=$expiration" > $cred_file

    p6_aws_shortcuts_gen "$org" "$cred_file" > ${cred_file}.me
    p6_run_code "$(p6_file_display ${cred_file}.me)"
    p6_file_rmf ${cred_file}.me

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_sts_svc_role_unassume()
#
#>
######################################################################
p6_aws_sts_svc_role_unassume() {

    p6_aws_cfg_restore_source

    p6_return_void
}
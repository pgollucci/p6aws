p6_aws_sts_svc_refresh() {
    local cred_file="$1"
    local map_file="$2"
    local org="$3"
    local daas_login="$4"

    p6_aws_cfg_save

    p6_aws_cfg_clear
    p6_file_rmf "$cred_file"

    local nicks=$(p6_aws_util_nicks "$org" "$map_file")
    p6_aws_sts_svc_jc_refresh "$nicks" "$daas_login"
    p6_aws_sts_svc_map "$org"

    p6_aws_shortcuts "$org" "$cred_file"

    p6_aws_sts_svc_profiles_list "$cred_file"

    p6_aws_cfg_restore_saved
}

p6_aws_sts_svc_role_assume() {
    local profile="$1"
    local region="$2"
    local output="$3"
    local role_arn="$4"
    local role_session_name="$5"
    local cred_file="$6"
    local src_cred_file="$7"
    local assumed_cred_file="$8"

    local dir=$(p6_transient_create "aws.sts")
    local json_file=$dir/assume.json

    p6_aws_sts_role_assume "$role_arn" "$role_session_name" > $json_file
    if [ $? -ne 0 ]; then
	p6_transient_delete "$json_file"
	return
    fi

    local aws_access_key_id=$(p6_json_key_2_value "AccessKeyId" "$json_file")
    local aws_secret_access_key=$(p6_json_key_2_value "SecretAccessKey" "$json_file")
    local aws_session_token=$(p6_json_key_2_value "SessionToken" "$json_file")
    local expiration=$(p6_json_key_2_value "Expiration" "$json_file")

    p6_transient_delete "$json_file"

    p6_file_move "$cred_file" "$src_cred_file"
    p6_aws_sts_svc_cred_write "$profile" "$region" "$output" "$aws_access_key_id" "$aws_secret_access_key" "$aws_session_token" "$expiration" > $assumed_cred_file
    p6_file_symlink "$assumed_cred_file" "$cred_file"

    p6_aws_cfg_clear

    p6_aws_shortcut_set "$profile" "$region" "env" "type"
}

p6_aws_sts_svc_role_unassume() {
    local cred_file="$1"
    local src_file="$2"
    local assumed_file="$3"

    p6_file_unlink       "$cred_file"
    p6_file_copy         "$src_file"  "$cred_file"
    p6_file_time_ma_sync "$src_file"  "$cred_file"
    p6_file_remove       "$src_file"  "$assumed_file"

    p6_aws_cfg_restore_source

    p6_aws_cfg_source_clear
}

p6_aws_sts_svc_cred_write() {
    local profile="$1"
    local region="$2"
    local output="$3"
    local aws_access_key_id="$4"
    local aws_secret_access_key="$5"
    local aws_session_token="$6"
    local expiration="$7"

    p6_aws_iam_svc_template_process "sts/profile" \
			     "PROFILE=$profile" \
			     "REGION=$region" \
			     "OUTPUT=$output" \
			     "AWS_ACCESS_KEY=$aws_access_key_id" \
			     "AWS_SECRET_ACCESS_KEY=$aws_secret_access_key" \
			     "AWS_SESSION_TOKEN=$aws_session_token" \
			     "EXPIRATION=$expiration"
}

p6_aws_sts_svc_profiles_list() {
    local cred_file="$1"

    p6_file_contains "^\[" "$cred_file"
}

p6_aws_sts_svc_map() {
    local org="$1"

    sts_map.py $org
}

p6_aws_sts_svc_jc_refresh() {
    local nicks="$1"
    local saml_provider_email="$2"

    sts.py --provider jc --nicks "$nicks" --login $saml_provider_email --region us-east-1 --outputformat json
}

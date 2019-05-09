p6_aws_logs_kms_key_associate() {
    local log_group_name="$1"
    local kms_key_id="$2"
    shift 2

    p6_log_or_run aws logs associate-kms-key --log-group-name $log_group_name --kms-key-id $kms_key_id "$@"
}

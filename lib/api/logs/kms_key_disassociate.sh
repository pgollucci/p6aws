p6_aws_logs_kms_key_disassociate() {
    local log_group_name="$1"
    shift 1

    p6_log_or_run aws logs disassociate-kms-key --log-group-name $log_group_name "$@"
}

p6_aws_logs_retention_policy_put() {
    local log_group_name="$1"
    local retention_in_days="$2"
    shift 2

    p6_log_or_run aws logs put-retention-policy --log-group-name $log_group_name --retention-in-days $retention_in_days "$@"
}

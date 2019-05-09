p6_aws_logs_retention_policy_delete() {
    local log_group_name="$1"
    shift 1

    p6_run_write_cmd aws logs delete-retention-policy --log-group-name $log_group_name "$@"
}

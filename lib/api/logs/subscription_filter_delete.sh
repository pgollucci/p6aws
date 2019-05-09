p6_aws_logs_subscription_filter_delete() {
    local log_group_name="$1"
    local filter_name="$2"
    shift 2

    p6_log_or_run aws logs delete-subscription-filter --log-group-name $log_group_name --filter-name $filter_name "$@"
}

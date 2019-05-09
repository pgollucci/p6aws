p6_aws_rds_event_subscription_delete() {
    local subscription_name="$1"
    shift 1

    p6_log_or_run aws rds delete-event-subscription --subscription-name $subscription_name "$@"
}

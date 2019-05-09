p6_aws_neptune_event_subscription_modify() {
    local subscription_name="$1"
    shift 1

    p6_log_or_run aws neptune modify-event-subscription --subscription-name $subscription_name "$@"
}

p6_aws_neptune_event_subscription_delete() {
    local subscription_name="$1"
    shift 1

    p6_run_write_cmd aws neptune delete-event-subscription --subscription-name $subscription_name "$@"
}

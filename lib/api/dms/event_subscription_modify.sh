p6_aws_dms_event_subscription_modify() {
    local subscription_name="$1"
    shift 1

    p6_run_write_cmd aws dms modify-event-subscription --subscription-name $subscription_name "$@"
}

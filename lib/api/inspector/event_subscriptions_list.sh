p6_aws_inspector_event_subscriptions_list() {

    p6_run_read_cmd aws inspector list-event-subscriptions "$@"
}

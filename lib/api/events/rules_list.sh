p6_aws_events_rules_list() {

    p6_run_read_cmd aws events list-rules "$@"
}

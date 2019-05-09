p6_aws_personalize_event_tracker_delete() {
    local event_tracker_arn="$1"
    shift 1

    p6_run_write_cmd aws personalize delete-event-tracker --event-tracker-arn $event_tracker_arn "$@"
}

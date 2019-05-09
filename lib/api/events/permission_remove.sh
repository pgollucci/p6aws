p6_aws_events_permission_remove() {
    local statement_id="$1"
    shift 1

    p6_run_write_cmd aws events remove-permission --statement-id $statement_id "$@"
}

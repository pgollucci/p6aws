p6_aws_events_permission_put() {
    local action="$1"
    local principal="$2"
    local statement_id="$3"
    shift 3

    p6_log_or_run aws events put-permission --action $action --principal $principal --statement-id $statement_id "$@"
}

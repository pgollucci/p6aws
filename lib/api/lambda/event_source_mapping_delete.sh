p6_aws_lambda_event_source_mapping_delete() {
    local uuid="$1"
    shift 1

    p6_log_or_run aws lambda delete-event-source-mapping --uuid $uuid "$@"
}

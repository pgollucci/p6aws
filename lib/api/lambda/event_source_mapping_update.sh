p6_aws_lambda_event_source_mapping_update() {
    local uuid="$1"
    shift 1

    p6_log_or_run aws lambda update-event-source-mapping --uuid $uuid "$@"
}

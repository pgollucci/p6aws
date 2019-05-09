p6_aws_lambda_event_source_mapping_delete() {
    local uuid="$1"
    shift 1

    p6_run_write_cmd aws lambda delete-event-source-mapping --uuid $uuid "$@"
}

p6_aws_pinpoint_endpoint_get() {
    local application_id="$1"
    local endpoint_id="$2"
    shift 2

    p6_run_read_cmd aws pinpoint get-endpoint --application-id $application_id --endpoint-id $endpoint_id "$@"
}

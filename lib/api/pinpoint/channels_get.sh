p6_aws_pinpoint_channels_get() {
    local application_id="$1"
    shift 1

    p6_run_read_cmd aws pinpoint get-channels --application-id $application_id "$@"
}

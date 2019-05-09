p6_aws_pinpoint_channels_get() {
    local application_id="$1"
    shift 1

    p6_log_and_run aws pinpoint get-channels --application-id $application_id "$@"
}

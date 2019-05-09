p6_aws_pinpoint_gcm_channel_delete() {
    local application_id="$1"
    shift 1

    p6_log_or_run aws pinpoint delete-gcm-channel --application-id $application_id "$@"
}

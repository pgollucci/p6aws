p6_aws_pinpoint_sms_channel_delete() {
    local application_id="$1"
    shift 1

    p6_log_or_run aws pinpoint delete-sms-channel --application-id $application_id "$@"
}

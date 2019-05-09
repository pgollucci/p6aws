p6_aws_pinpoint_email_channel_delete() {
    local application_id="$1"
    shift 1

    p6_log_or_run aws pinpoint delete-email-channel --application-id $application_id "$@"
}

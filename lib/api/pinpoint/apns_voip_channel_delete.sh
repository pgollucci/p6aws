p6_aws_pinpoint_apns_voip_channel_delete() {
    local application_id="$1"
    shift 1

    p6_log_or_run aws pinpoint delete-apns-voip-channel --application-id $application_id "$@"
}

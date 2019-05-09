p6_aws_pinpoint_apns_voip_channel_update() {
    local apns_voip_channel_request="$1"
    local application_id="$2"
    shift 2

    p6_log_or_run aws pinpoint update-apns-voip-channel --apns-voip-channel-request $apns_voip_channel_request --application-id $application_id "$@"
}

p6_aws_pinpoint_baidu_channel_update() {
    local application_id="$1"
    local baidu_channel_request="$2"
    shift 2

    p6_log_or_run aws pinpoint update-baidu-channel --application-id $application_id --baidu-channel-request $baidu_channel_request "$@"
}

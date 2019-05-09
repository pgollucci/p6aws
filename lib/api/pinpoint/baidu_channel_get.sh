p6_aws_pinpoint_baidu_channel_get() {
    local application_id="$1"
    shift 1

    p6_log_and_run aws pinpoint get-baidu-channel --application-id $application_id "$@"
}

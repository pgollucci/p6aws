p6_aws_pinpoint_baidu_channel_delete() {
    local application_id="$1"
    shift 1

    p6_run_write_cmd aws pinpoint delete-baidu-channel --application-id $application_id "$@"
}

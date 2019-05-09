p6_aws_iotanalytics_channel_update() {
    local channel_name="$1"
    shift 1

    p6_log_or_run aws iotanalytics update-channel --channel-name $channel_name "$@"
}

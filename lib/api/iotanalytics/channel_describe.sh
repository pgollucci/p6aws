p6_aws_iotanalytics_channel_describe() {
    local channel_name="$1"
    shift 1

    p6_log_and_run aws iotanalytics describe-channel --channel-name $channel_name "$@"
}

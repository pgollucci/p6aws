p6_aws_iotanalytics_channel_data_sample() {
    local channel_name="$1"
    shift 1

    p6_log_or_run aws iotanalytics sample-channel-data --channel-name $channel_name "$@"
}

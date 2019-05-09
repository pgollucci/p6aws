p6_aws_iotanalytics_channel_delete() {
    local channel_name="$1"
    shift 1

    p6_log_or_run aws iotanalytics delete-channel --channel-name $channel_name "$@"
}

p6_aws_iotanalytics_channel_create() {
    local channel_name="$1"
    shift 1

    p6_run_write_cmd aws iotanalytics create-channel --channel-name $channel_name "$@"
}

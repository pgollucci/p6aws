p6_aws_iotanalytics_channel_delete() {
    local channel_name="$1"
    shift 1

    p6_run_write_cmd aws iotanalytics delete-channel --channel-name $channel_name "$@"
}

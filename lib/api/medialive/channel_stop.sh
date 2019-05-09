p6_aws_medialive_channel_stop() {
    local channel_id="$1"
    shift 1

    p6_run_write_cmd aws medialive stop-channel --channel-id $channel_id "$@"
}

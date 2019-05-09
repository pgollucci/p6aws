p6_aws_medialive_channel_stop() {
    local channel_id="$1"
    shift 1

    p6_log_or_run aws medialive stop-channel --channel-id $channel_id "$@"
}

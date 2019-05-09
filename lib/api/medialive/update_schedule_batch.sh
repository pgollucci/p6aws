p6_aws_medialive_update_schedule_batch() {
    local channel_id="$1"
    shift 1

    p6_log_or_run aws medialive batch-update-schedule --channel-id $channel_id "$@"
}

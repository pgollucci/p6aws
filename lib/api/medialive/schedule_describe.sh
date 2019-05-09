p6_aws_medialive_schedule_describe() {
    local channel_id="$1"
    shift 1

    p6_log_and_run aws medialive describe-schedule --channel-id $channel_id "$@"
}

p6_aws_medialive_channel_class_update() {
    local channel_class="$1"
    local channel_id="$2"
    shift 2

    p6_run_write_cmd aws medialive update-channel-class --channel-class $channel_class --channel-id $channel_id "$@"
}

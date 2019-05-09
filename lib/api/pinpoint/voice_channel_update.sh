p6_aws_pinpoint_voice_channel_update() {
    local application_id="$1"
    local voice_channel_request="$2"
    shift 2

    p6_run_write_cmd aws pinpoint update-voice-channel --application-id $application_id --voice-channel-request $voice_channel_request "$@"
}

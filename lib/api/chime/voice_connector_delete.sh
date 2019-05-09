p6_aws_chime_voice_connector_delete() {
    local voice_connector_id="$1"
    shift 1

    p6_run_write_cmd aws chime delete-voice-connector --voice-connector-id $voice_connector_id "$@"
}

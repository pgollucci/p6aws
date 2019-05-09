p6_aws_chime_voice_connector_termination_delete() {
    local voice_connector_id="$1"
    shift 1

    p6_run_write_cmd aws chime delete-voice-connector-termination --voice-connector-id $voice_connector_id "$@"
}

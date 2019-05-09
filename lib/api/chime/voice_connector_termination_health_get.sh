p6_aws_chime_voice_connector_termination_health_get() {
    local voice_connector_id="$1"
    shift 1

    p6_run_read_cmd aws chime get-voice-connector-termination-health --voice-connector-id $voice_connector_id "$@"
}

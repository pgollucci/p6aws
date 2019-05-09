p6_aws_chime_voice_connector_origination_put() {
    local voice_connector_id="$1"
    local origination="$2"
    shift 2

    p6_run_write_cmd aws chime put-voice-connector-origination --voice-connector-id $voice_connector_id --origination $origination "$@"
}

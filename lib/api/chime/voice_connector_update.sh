p6_aws_chime_voice_connector_update() {
    local voice_connector_id="$1"
    local name="$2"
    local require_encryption="$3"
    shift 3

    p6_run_write_cmd aws chime update-voice-connector --voice-connector-id $voice_connector_id --name $name --require-encryption $require_encryption "$@"
}

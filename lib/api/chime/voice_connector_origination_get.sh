######################################################################
#<
#
# Function:
#      = p6_aws_chime_voice_connector_origination_get(voice_connector_id)
#
# Arg(s):
#    voice_connector_id - 
#
#
#>
######################################################################
p6_aws_chime_voice_connector_origination_get() {
    local voice_connector_id="$1"
    shift 1

    p6_run_read_cmd aws chime get-voice-connector-origination --voice-connector-id $voice_connector_id "$@"
}
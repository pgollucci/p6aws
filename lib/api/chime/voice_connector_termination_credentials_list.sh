######################################################################
#<
#
# Function:
#      = p6_aws_chime_voice_connector_termination_credentials_list(voice_connector_id)
#
# Arg(s):
#    voice_connector_id - 
#
#
#>
######################################################################
p6_aws_chime_voice_connector_termination_credentials_list() {
    local voice_connector_id="$1"
    shift 1

    p6_run_read_cmd aws chime list-voice-connector-termination-credentials --voice-connector-id $voice_connector_id "$@"
}
######################################################################
#<
#
# Function:
#      = p6_aws_chime_voice_connector_termination_put(voice_connector_id, termination)
#
# Arg(s):
#    voice_connector_id - 
#    termination - 
#
#
#>
######################################################################
p6_aws_chime_voice_connector_termination_put() {
    local voice_connector_id="$1"
    local termination="$2"
    shift 2

    p6_run_write_cmd aws chime put-voice-connector-termination --voice-connector-id $voice_connector_id --termination $termination "$@"
}
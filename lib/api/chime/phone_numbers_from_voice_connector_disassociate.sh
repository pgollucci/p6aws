######################################################################
#<
#
# Function:
#      = p6_aws_chime_phone_numbers_from_voice_connector_disassociate(voice_connector_id)
#
# Arg(s):
#    voice_connector_id - 
#
#
#>
######################################################################
p6_aws_chime_phone_numbers_from_voice_connector_disassociate() {
    local voice_connector_id="$1"
    shift 1

    p6_run_write_cmd aws chime disassociate-phone-numbers-from-voice-connector --voice-connector-id $voice_connector_id "$@"
}
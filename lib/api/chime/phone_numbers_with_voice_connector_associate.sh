######################################################################
#<
#
# Function:
#	p6_aws_chime_phone_numbers_with_voice_connector_associate(voice_connector_id)
#
#  Args:
#	voice_connector_id - 
#
#>
######################################################################
p6_aws_chime_phone_numbers_with_voice_connector_associate() {
    local voice_connector_id="$1"
    shift 1

    p6_run_write_cmd aws chime associate-phone-numbers-with-voice-connector --voice-connector-id $voice_connector_id "$@"
}
######################################################################
#<
#
# Function:
#	p6_aws_pinpoint_sms_voice_voice_message_send()
#
#>
######################################################################
p6_aws_pinpoint_sms_voice_voice_message_send() {

    p6_run_write_cmd aws pinpoint-sms-voice send-voice-message "$@"
}
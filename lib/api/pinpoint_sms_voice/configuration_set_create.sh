######################################################################
#<
#
# Function:
#	p6_aws_pinpoint_sms_voice_configuration_set_create()
#
#>
######################################################################
p6_aws_pinpoint_sms_voice_configuration_set_create() {

    p6_run_write_cmd aws pinpoint-sms-voice create-configuration-set "$@"
}
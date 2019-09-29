######################################################################
#<
#
# Function:
#      = p6_aws_sms_voice_configuration_set_create()
#
#
#
#>
######################################################################
p6_aws_sms_voice_configuration_set_create() {

    p6_run_write_cmd aws sms-voice create-configuration-set "$@"
}
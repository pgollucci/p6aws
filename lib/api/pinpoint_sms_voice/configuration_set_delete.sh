######################################################################
#<
#
# Function:
#      = p6_aws_pinpoint_sms_voice_configuration_set_delete(configuration_set_name)
#
# Arg(s):
#    configuration_set_name - 
#
#
#>
######################################################################
p6_aws_pinpoint_sms_voice_configuration_set_delete() {
    local configuration_set_name="$1"
    shift 1

    p6_run_write_cmd aws pinpoint-sms-voice delete-configuration-set --configuration-set-name $configuration_set_name "$@"
}
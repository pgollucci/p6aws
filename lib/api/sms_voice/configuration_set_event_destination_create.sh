######################################################################
#<
#
# Function:
#      = p6_aws_sms_voice_configuration_set_event_destination_create(configuration_set_name)
#
# Arg(s):
#    configuration_set_name - 
#
#
#>
######################################################################
p6_aws_sms_voice_configuration_set_event_destination_create() {
    local configuration_set_name="$1"
    shift 1

    p6_run_write_cmd aws sms-voice create-configuration-set-event-destination --configuration-set-name $configuration_set_name "$@"
}
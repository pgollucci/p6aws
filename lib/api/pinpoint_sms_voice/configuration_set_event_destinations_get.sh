######################################################################
#<
#
# Function:
#      = p6_aws_pinpoint_sms_voice_configuration_set_event_destinations_get(configuration_set_name)
#
# Arg(s):
#    configuration_set_name - 
#
#
#>
######################################################################
p6_aws_pinpoint_sms_voice_configuration_set_event_destinations_get() {
    local configuration_set_name="$1"
    shift 1

    p6_run_read_cmd aws pinpoint-sms-voice get-configuration-set-event-destinations --configuration-set-name $configuration_set_name "$@"
}
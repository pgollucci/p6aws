######################################################################
#<
#
# Function:
#	p6_aws_pinpoint_email_configuration_set_event_destination_create(configuration_set_name, event_destination_name, event_destination)
#
#  Args:
#	configuration_set_name - 
#	event_destination_name - 
#	event_destination - 
#
#>
######################################################################
p6_aws_pinpoint_email_configuration_set_event_destination_create() {
    local configuration_set_name="$1"
    local event_destination_name="$2"
    local event_destination="$3"
    shift 3

    p6_run_write_cmd aws pinpoint-email create-configuration-set-event-destination --configuration-set-name $configuration_set_name --event-destination-name $event_destination_name --event-destination $event_destination "$@"
}
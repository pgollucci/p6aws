######################################################################
#<
#
# Function:
#	p6_aws_discovery_configuration_items_from_application_disassociate(application_configuration_id, configuration_ids)
#
#  Args:
#	application_configuration_id - 
#	configuration_ids - 
#
#>
######################################################################
p6_aws_discovery_configuration_items_from_application_disassociate() {
    local application_configuration_id="$1"
    local configuration_ids="$2"
    shift 2

    p6_run_write_cmd aws discovery disassociate-configuration-items-from-application --application-configuration-id $application_configuration_id --configuration-ids $configuration_ids "$@"
}
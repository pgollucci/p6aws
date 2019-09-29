######################################################################
#<
#
# Function:
#      = p6_aws_discovery_configuration_items_to_application_associate(application_configuration_id, configuration_ids)
#
# Arg(s):
#    application_configuration_id - 
#    configuration_ids - 
#
#
#>
######################################################################
p6_aws_discovery_configuration_items_to_application_associate() {
    local application_configuration_id="$1"
    local configuration_ids="$2"
    shift 2

    p6_run_write_cmd aws discovery associate-configuration-items-to-application --application-configuration-id $application_configuration_id --configuration-ids $configuration_ids "$@"
}
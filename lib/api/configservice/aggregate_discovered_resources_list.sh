######################################################################
#<
#
# Function:
#	p6_aws_configservice_aggregate_discovered_resources_list(configuration_aggregator_name, resource_type)
#
#  Args:
#	configuration_aggregator_name - 
#	resource_type - 
#
#>
######################################################################
p6_aws_configservice_aggregate_discovered_resources_list() {
    local configuration_aggregator_name="$1"
    local resource_type="$2"
    shift 2

    p6_run_read_cmd aws configservice list-aggregate-discovered-resources --configuration-aggregator-name $configuration_aggregator_name --resource-type $resource_type "$@"
}
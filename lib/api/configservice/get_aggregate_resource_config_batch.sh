######################################################################
#<
#
# Function:
#	p6_aws_configservice_get_aggregate_resource_config_batch(configuration_aggregator_name, resource_identifiers)
#
#  Args:
#	configuration_aggregator_name - 
#	resource_identifiers - 
#
#>
######################################################################
p6_aws_configservice_get_aggregate_resource_config_batch() {
    local configuration_aggregator_name="$1"
    local resource_identifiers="$2"
    shift 2

    p6_run_read_cmd aws configservice batch-get-aggregate-resource-config --configuration-aggregator-name $configuration_aggregator_name --resource-identifiers $resource_identifiers "$@"
}
######################################################################
#<
#
# Function:
#	p6_aws_configservice_aggregate_discovered_resource_counts_get(configuration_aggregator_name)
#
#  Args:
#	configuration_aggregator_name - 
#
#>
######################################################################
p6_aws_configservice_aggregate_discovered_resource_counts_get() {
    local configuration_aggregator_name="$1"
    shift 1

    p6_run_read_cmd aws configservice get-aggregate-discovered-resource-counts --configuration-aggregator-name $configuration_aggregator_name "$@"
}
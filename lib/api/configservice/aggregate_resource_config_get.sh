######################################################################
#<
#
# Function:
#      = p6_aws_configservice_aggregate_resource_config_get(configuration_aggregator_name, resource_identifier)
#
# Arg(s):
#    configuration_aggregator_name - 
#    resource_identifier - 
#
#
#>
######################################################################
p6_aws_configservice_aggregate_resource_config_get() {
    local configuration_aggregator_name="$1"
    local resource_identifier="$2"
    shift 2

    p6_run_read_cmd aws configservice get-aggregate-resource-config --configuration-aggregator-name $configuration_aggregator_name --resource-identifier $resource_identifier "$@"
}
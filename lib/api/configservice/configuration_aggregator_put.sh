######################################################################
#<
#
# Function:
#	p6_aws_configservice_configuration_aggregator_put(configuration_aggregator_name)
#
#  Args:
#	configuration_aggregator_name - 
#
#>
######################################################################
p6_aws_configservice_configuration_aggregator_put() {
    local configuration_aggregator_name="$1"
    shift 1

    p6_run_write_cmd aws configservice put-configuration-aggregator --configuration-aggregator-name $configuration_aggregator_name "$@"
}
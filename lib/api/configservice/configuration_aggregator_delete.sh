######################################################################
#<
#
# Function:
#      = p6_aws_configservice_configuration_aggregator_delete(configuration_aggregator_name)
#
# Arg(s):
#    configuration_aggregator_name - 
#
#
#>
######################################################################
p6_aws_configservice_configuration_aggregator_delete() {
    local configuration_aggregator_name="$1"
    shift 1

    p6_run_write_cmd aws configservice delete-configuration-aggregator --configuration-aggregator-name $configuration_aggregator_name "$@"
}
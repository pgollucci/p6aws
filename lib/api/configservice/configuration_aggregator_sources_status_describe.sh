######################################################################
#<
#
# Function:
#      = p6_aws_configservice_configuration_aggregator_sources_status_describe(configuration_aggregator_name)
#
# Arg(s):
#    configuration_aggregator_name - 
#
#
#>
######################################################################
p6_aws_configservice_configuration_aggregator_sources_status_describe() {
    local configuration_aggregator_name="$1"
    shift 1

    p6_run_read_cmd aws configservice describe-configuration-aggregator-sources-status --configuration-aggregator-name $configuration_aggregator_name "$@"
}
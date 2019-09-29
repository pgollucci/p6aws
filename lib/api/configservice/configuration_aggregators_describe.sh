######################################################################
#<
#
# Function:
#      = p6_aws_configservice_configuration_aggregators_describe()
#
#
#
#>
######################################################################
p6_aws_configservice_configuration_aggregators_describe() {

    p6_run_read_cmd aws configservice describe-configuration-aggregators "$@"
}
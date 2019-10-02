######################################################################
#<
#
# Function:
#	p6_aws_configservice_retention_configurations_describe()
#
#>
######################################################################
p6_aws_configservice_retention_configurations_describe() {

    p6_run_read_cmd aws configservice describe-retention-configurations "$@"
}
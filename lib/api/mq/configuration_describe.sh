######################################################################
#<
#
# Function:
#	p6_aws_mq_configuration_describe(configuration_id)
#
#  Args:
#	configuration_id - 
#
#>
######################################################################
p6_aws_mq_configuration_describe() {
    local configuration_id="$1"
    shift 1

    p6_run_read_cmd aws mq describe-configuration --configuration-id $configuration_id "$@"
}
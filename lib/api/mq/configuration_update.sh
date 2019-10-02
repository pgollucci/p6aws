######################################################################
#<
#
# Function:
#	p6_aws_mq_configuration_update(configuration_id)
#
#  Args:
#	configuration_id - 
#
#>
######################################################################
p6_aws_mq_configuration_update() {
    local configuration_id="$1"
    shift 1

    p6_run_write_cmd aws mq update-configuration --configuration-id $configuration_id "$@"
}
######################################################################
#<
#
# Function:
#	p6_aws_worklink_device_policy_configuration_describe(fleet_arn)
#
#  Args:
#	fleet_arn - 
#
#>
######################################################################
p6_aws_worklink_device_policy_configuration_describe() {
    local fleet_arn="$1"
    shift 1

    p6_run_read_cmd aws worklink describe-device-policy-configuration --fleet-arn $fleet_arn "$@"
}
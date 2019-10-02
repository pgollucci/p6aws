######################################################################
#<
#
# Function:
#	p6_aws_devicefarm_device_pool_delete(arn)
#
#  Args:
#	arn - 
#
#>
######################################################################
p6_aws_devicefarm_device_pool_delete() {
    local arn="$1"
    shift 1

    p6_run_write_cmd aws devicefarm delete-device-pool --arn $arn "$@"
}
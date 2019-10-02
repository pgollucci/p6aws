######################################################################
#<
#
# Function:
#	p6_aws_devicefarm_device_instance_get(arn)
#
#  Args:
#	arn - 
#
#>
######################################################################
p6_aws_devicefarm_device_instance_get() {
    local arn="$1"
    shift 1

    p6_run_read_cmd aws devicefarm get-device-instance --arn $arn "$@"
}
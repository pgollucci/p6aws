######################################################################
#<
#
# Function:
#	p6_aws_lightsail_instance_reboot(instance_name)
#
#  Args:
#	instance_name - 
#
#>
######################################################################
p6_aws_lightsail_instance_reboot() {
    local instance_name="$1"
    shift 1

    p6_run_write_cmd aws lightsail reboot-instance --instance-name $instance_name "$@"
}
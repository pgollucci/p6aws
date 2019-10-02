######################################################################
#<
#
# Function:
#	p6_aws_opsworks_instance_reboot(instance_id)
#
#  Args:
#	instance_id - 
#
#>
######################################################################
p6_aws_opsworks_instance_reboot() {
    local instance_id="$1"
    shift 1

    p6_run_write_cmd aws opsworks reboot-instance --instance-id $instance_id "$@"
}
######################################################################
#<
#
# Function:
#	p6_aws_lightsail_instance_stop(instance_name)
#
#  Args:
#	instance_name - 
#
#>
######################################################################
p6_aws_lightsail_instance_stop() {
    local instance_name="$1"
    shift 1

    p6_run_write_cmd aws lightsail stop-instance --instance-name $instance_name "$@"
}
######################################################################
#<
#
# Function:
#	p6_aws_autoscaling_instance_health_set(instance_id, health_status)
#
#  Args:
#	instance_id - 
#	health_status - 
#
#>
######################################################################
p6_aws_autoscaling_instance_health_set() {
    local instance_id="$1"
    local health_status="$2"
    shift 2

    p6_run_write_cmd aws autoscaling set-instance-health --instance-id $instance_id --health-status $health_status "$@"
}
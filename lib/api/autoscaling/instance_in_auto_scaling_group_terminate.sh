######################################################################
#<
#
# Function:
#	p6_aws_autoscaling_instance_in_auto_scaling_group_terminate(instance_id, should_decrement_desired_capacity)
#
#  Args:
#	instance_id - 
#	should_decrement_desired_capacity - 
#
#>
######################################################################
p6_aws_autoscaling_instance_in_auto_scaling_group_terminate() {
    local instance_id="$1"
    local should_decrement_desired_capacity="$2"
    shift 2

    p6_run_write_cmd aws autoscaling terminate-instance-in-auto-scaling-group --instance-id $instance_id --should-decrement-desired-capacity $should_decrement_desired_capacity "$@"
}
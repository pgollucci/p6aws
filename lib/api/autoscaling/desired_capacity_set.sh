######################################################################
#<
#
# Function:
#	p6_aws_autoscaling_desired_capacity_set(auto_scaling_group_name, desired_capacity)
#
#  Args:
#	auto_scaling_group_name - 
#	desired_capacity - 
#
#>
######################################################################
p6_aws_autoscaling_desired_capacity_set() {
    local auto_scaling_group_name="$1"
    local desired_capacity="$2"
    shift 2

    p6_run_write_cmd aws autoscaling set-desired-capacity --auto-scaling-group-name $auto_scaling_group_name --desired-capacity $desired_capacity "$@"
}
######################################################################
#<
#
# Function:
#	p6_aws_autoscaling_load_balancer_target_groups_describe(auto_scaling_group_name)
#
#  Args:
#	auto_scaling_group_name - 
#
#>
######################################################################
p6_aws_autoscaling_load_balancer_target_groups_describe() {
    local auto_scaling_group_name="$1"
    shift 1

    p6_run_read_cmd aws autoscaling describe-load-balancer-target-groups --auto-scaling-group-name $auto_scaling_group_name "$@"
}
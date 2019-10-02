######################################################################
#<
#
# Function:
#	p6_aws_autoscaling_lifecycle_hooks_describe(auto_scaling_group_name)
#
#  Args:
#	auto_scaling_group_name - 
#
#>
######################################################################
p6_aws_autoscaling_lifecycle_hooks_describe() {
    local auto_scaling_group_name="$1"
    shift 1

    p6_run_read_cmd aws autoscaling describe-lifecycle-hooks --auto-scaling-group-name $auto_scaling_group_name "$@"
}
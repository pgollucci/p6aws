######################################################################
#<
#
# Function:
#	p6_aws_autoscaling_auto_scaling_group_delete(auto_scaling_group_name)
#
#  Args:
#	auto_scaling_group_name - 
#
#>
######################################################################
p6_aws_autoscaling_auto_scaling_group_delete() {
    local auto_scaling_group_name="$1"
    shift 1

    p6_run_write_cmd aws autoscaling delete-auto-scaling-group --auto-scaling-group-name $auto_scaling_group_name "$@"
}
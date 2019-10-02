######################################################################
#<
#
# Function:
#	p6_aws_autoscaling_auto_scaling_group_update(auto_scaling_group_name)
#
#  Args:
#	auto_scaling_group_name - 
#
#>
######################################################################
p6_aws_autoscaling_auto_scaling_group_update() {
    local auto_scaling_group_name="$1"
    shift 1

    p6_run_write_cmd aws autoscaling update-auto-scaling-group --auto-scaling-group-name $auto_scaling_group_name "$@"
}
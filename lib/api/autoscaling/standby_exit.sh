######################################################################
#<
#
# Function:
#	p6_aws_autoscaling_standby_exit(auto_scaling_group_name)
#
#  Args:
#	auto_scaling_group_name - 
#
#>
######################################################################
p6_aws_autoscaling_standby_exit() {
    local auto_scaling_group_name="$1"
    shift 1

    p6_run_write_cmd aws autoscaling exit-standby --auto-scaling-group-name $auto_scaling_group_name "$@"
}
######################################################################
#<
#
# Function:
#	p6_aws_autoscaling_auto_scaling_group_create(auto_scaling_group_name, min_size, max_size)
#
#  Args:
#	auto_scaling_group_name - 
#	min_size - 
#	max_size - 
#
#>
######################################################################
p6_aws_autoscaling_auto_scaling_group_create() {
    local auto_scaling_group_name="$1"
    local min_size="$2"
    local max_size="$3"
    shift 3

    p6_run_write_cmd aws autoscaling create-auto-scaling-group --auto-scaling-group-name $auto_scaling_group_name --min-size $min_size --max-size $max_size "$@"
}
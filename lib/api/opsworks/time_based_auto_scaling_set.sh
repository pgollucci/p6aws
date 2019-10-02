######################################################################
#<
#
# Function:
#	p6_aws_opsworks_time_based_auto_scaling_set(instance_id)
#
#  Args:
#	instance_id - 
#
#>
######################################################################
p6_aws_opsworks_time_based_auto_scaling_set() {
    local instance_id="$1"
    shift 1

    p6_run_write_cmd aws opsworks set-time-based-auto-scaling --instance-id $instance_id "$@"
}
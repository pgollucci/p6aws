######################################################################
#<
#
# Function:
#	p6_aws_ssm_instance_patch_states_describe(instance_ids)
#
#  Args:
#	instance_ids - 
#
#>
######################################################################
p6_aws_ssm_instance_patch_states_describe() {
    local instance_ids="$1"
    shift 1

    p6_run_read_cmd aws ssm describe-instance-patch-states --instance-ids $instance_ids "$@"
}
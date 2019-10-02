######################################################################
#<
#
# Function:
#	p6_aws_opsworks_instance_unassign(instance_id)
#
#  Args:
#	instance_id - 
#
#>
######################################################################
p6_aws_opsworks_instance_unassign() {
    local instance_id="$1"
    shift 1

    p6_run_write_cmd aws opsworks unassign-instance --instance-id $instance_id "$@"
}
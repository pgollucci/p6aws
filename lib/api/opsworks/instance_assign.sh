######################################################################
#<
#
# Function:
#	p6_aws_opsworks_instance_assign(instance_id, layer_ids)
#
#  Args:
#	instance_id - 
#	layer_ids - 
#
#>
######################################################################
p6_aws_opsworks_instance_assign() {
    local instance_id="$1"
    local layer_ids="$2"
    shift 2

    p6_run_write_cmd aws opsworks assign-instance --instance-id $instance_id --layer-ids $layer_ids "$@"
}
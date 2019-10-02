######################################################################
#<
#
# Function:
#	p6_aws_iotthingsgraph_system_instance_get(id)
#
#  Args:
#	id - 
#
#>
######################################################################
p6_aws_iotthingsgraph_system_instance_get() {
    local id="$1"
    shift 1

    p6_run_read_cmd aws iotthingsgraph get-system-instance --id $id "$@"
}
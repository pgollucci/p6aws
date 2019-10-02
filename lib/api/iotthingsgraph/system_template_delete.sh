######################################################################
#<
#
# Function:
#	p6_aws_iotthingsgraph_system_template_delete(id)
#
#  Args:
#	id - 
#
#>
######################################################################
p6_aws_iotthingsgraph_system_template_delete() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws iotthingsgraph delete-system-template --id $id "$@"
}
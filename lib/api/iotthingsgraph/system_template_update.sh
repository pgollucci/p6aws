######################################################################
#<
#
# Function:
#	p6_aws_iotthingsgraph_system_template_update(id, definition)
#
#  Args:
#	id - 
#	definition - 
#
#>
######################################################################
p6_aws_iotthingsgraph_system_template_update() {
    local id="$1"
    local definition="$2"
    shift 2

    p6_run_write_cmd aws iotthingsgraph update-system-template --id $id --definition $definition "$@"
}
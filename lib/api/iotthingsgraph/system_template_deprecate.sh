######################################################################
#<
#
# Function:
#	p6_aws_iotthingsgraph_system_template_deprecate(id)
#
#  Args:
#	id - 
#
#>
######################################################################
p6_aws_iotthingsgraph_system_template_deprecate() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws iotthingsgraph deprecate-system-template --id $id "$@"
}
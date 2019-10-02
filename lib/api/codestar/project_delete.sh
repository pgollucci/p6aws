######################################################################
#<
#
# Function:
#	p6_aws_codestar_project_delete(id)
#
#  Args:
#	id - 
#
#>
######################################################################
p6_aws_codestar_project_delete() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws codestar delete-project --id $id "$@"
}
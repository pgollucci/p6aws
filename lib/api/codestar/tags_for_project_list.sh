######################################################################
#<
#
# Function:
#	p6_aws_codestar_tags_for_project_list(id)
#
#  Args:
#	id - 
#
#>
######################################################################
p6_aws_codestar_tags_for_project_list() {
    local id="$1"
    shift 1

    p6_run_read_cmd aws codestar list-tags-for-project --id $id "$@"
}
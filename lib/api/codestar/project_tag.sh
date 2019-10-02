######################################################################
#<
#
# Function:
#	p6_aws_codestar_project_tag(id, tags)
#
#  Args:
#	id - 
#	tags - 
#
#>
######################################################################
p6_aws_codestar_project_tag() {
    local id="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws codestar tag-project --id $id --tags $tags "$@"
}
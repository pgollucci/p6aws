######################################################################
#<
#
# Function:
#	p6_aws_workspaces_tags_describe(resource_id)
#
#  Args:
#	resource_id - 
#
#>
######################################################################
p6_aws_workspaces_tags_describe() {
    local resource_id="$1"
    shift 1

    p6_run_read_cmd aws workspaces describe-tags --resource-id $resource_id "$@"
}
######################################################################
#<
#
# Function:
#	p6_aws_workspaces_tags_delete(resource_id, tag_keys)
#
#  Args:
#	resource_id - 
#	tag_keys - 
#
#>
######################################################################
p6_aws_workspaces_tags_delete() {
    local resource_id="$1"
    local tag_keys="$2"
    shift 2

    p6_run_write_cmd aws workspaces delete-tags --resource-id $resource_id --tag-keys $tag_keys "$@"
}
######################################################################
#<
#
# Function:
#	p6_aws_emr_tags_remove(resource_id, tag_keys)
#
#  Args:
#	resource_id - 
#	tag_keys - 
#
#>
######################################################################
p6_aws_emr_tags_remove() {
    local resource_id="$1"
    local tag_keys="$2"
    shift 2

    p6_run_write_cmd aws emr remove-tags --resource-id $resource_id --tag-keys $tag_keys "$@"
}
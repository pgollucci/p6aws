######################################################################
#<
#
# Function:
#	p6_aws_organizations_resource_untag(resource_id, tag_keys)
#
#  Args:
#	resource_id - 
#	tag_keys - 
#
#>
######################################################################
p6_aws_organizations_resource_untag() {
    local resource_id="$1"
    local tag_keys="$2"
    shift 2

    p6_run_write_cmd aws organizations untag-resource --resource-id $resource_id --tag-keys $tag_keys "$@"
}
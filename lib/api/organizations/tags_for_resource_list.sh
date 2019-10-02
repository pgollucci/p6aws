######################################################################
#<
#
# Function:
#	p6_aws_organizations_tags_for_resource_list(resource_id)
#
#  Args:
#	resource_id - 
#
#>
######################################################################
p6_aws_organizations_tags_for_resource_list() {
    local resource_id="$1"
    shift 1

    p6_run_read_cmd aws organizations list-tags-for-resource --resource-id $resource_id "$@"
}
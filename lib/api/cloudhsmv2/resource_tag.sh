######################################################################
#<
#
# Function:
#	p6_aws_cloudhsmv2_resource_tag(resource_id, tag_list)
#
#  Args:
#	resource_id - 
#	tag_list - 
#
#>
######################################################################
p6_aws_cloudhsmv2_resource_tag() {
    local resource_id="$1"
    local tag_list="$2"
    shift 2

    p6_run_write_cmd aws cloudhsmv2 tag-resource --resource-id $resource_id --tag-list $tag_list "$@"
}
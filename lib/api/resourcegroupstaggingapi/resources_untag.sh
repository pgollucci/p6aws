######################################################################
#<
#
# Function:
#	p6_aws_resourcegroupstaggingapi_resources_untag(resource_arn_list, tag_keys)
#
#  Args:
#	resource_arn_list - 
#	tag_keys - 
#
#>
######################################################################
p6_aws_resourcegroupstaggingapi_resources_untag() {
    local resource_arn_list="$1"
    local tag_keys="$2"
    shift 2

    p6_run_write_cmd aws resourcegroupstaggingapi untag-resources --resource-arn-list $resource_arn_list --tag-keys $tag_keys "$@"
}
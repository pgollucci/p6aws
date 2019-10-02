######################################################################
#<
#
# Function:
#	p6_aws_cloudhsm_tags_from_resource_remove(resource_arn, tag_key_list)
#
#  Args:
#	resource_arn - 
#	tag_key_list - 
#
#>
######################################################################
p6_aws_cloudhsm_tags_from_resource_remove() {
    local resource_arn="$1"
    local tag_key_list="$2"
    shift 2

    p6_run_write_cmd aws cloudhsm remove-tags-from-resource --resource-arn $resource_arn --tag-key-list $tag_key_list "$@"
}
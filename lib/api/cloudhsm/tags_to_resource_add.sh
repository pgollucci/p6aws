######################################################################
#<
#
# Function:
#	p6_aws_cloudhsm_tags_to_resource_add(resource_arn, tag_list)
#
#  Args:
#	resource_arn - 
#	tag_list - 
#
#>
######################################################################
p6_aws_cloudhsm_tags_to_resource_add() {
    local resource_arn="$1"
    local tag_list="$2"
    shift 2

    p6_run_write_cmd aws cloudhsm add-tags-to-resource --resource-arn $resource_arn --tag-list $tag_list "$@"
}
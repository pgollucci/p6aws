######################################################################
#<
#
# Function:
#	p6_aws_glue_resource_tag(resource_arn, tags_to_add)
#
#  Args:
#	resource_arn - 
#	tags_to_add - 
#
#>
######################################################################
p6_aws_glue_resource_tag() {
    local resource_arn="$1"
    local tags_to_add="$2"
    shift 2

    p6_run_write_cmd aws glue tag-resource --resource-arn $resource_arn --tags-to-add $tags_to_add "$@"
}
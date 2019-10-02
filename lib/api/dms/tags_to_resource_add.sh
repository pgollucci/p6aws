######################################################################
#<
#
# Function:
#	p6_aws_dms_tags_to_resource_add(resource_arn, tags)
#
#  Args:
#	resource_arn - 
#	tags - 
#
#>
######################################################################
p6_aws_dms_tags_to_resource_add() {
    local resource_arn="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws dms add-tags-to-resource --resource-arn $resource_arn --tags $tags "$@"
}
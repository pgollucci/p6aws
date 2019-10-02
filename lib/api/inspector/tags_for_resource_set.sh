######################################################################
#<
#
# Function:
#	p6_aws_inspector_tags_for_resource_set(resource_arn)
#
#  Args:
#	resource_arn - 
#
#>
######################################################################
p6_aws_inspector_tags_for_resource_set() {
    local resource_arn="$1"
    shift 1

    p6_run_write_cmd aws inspector set-tags-for-resource --resource-arn $resource_arn "$@"
}
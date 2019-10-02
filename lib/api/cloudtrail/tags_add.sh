######################################################################
#<
#
# Function:
#	p6_aws_cloudtrail_tags_add(resource_id)
#
#  Args:
#	resource_id - 
#
#>
######################################################################
p6_aws_cloudtrail_tags_add() {
    local resource_id="$1"
    shift 1

    p6_run_write_cmd aws cloudtrail add-tags --resource-id $resource_id "$@"
}
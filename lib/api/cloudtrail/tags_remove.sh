######################################################################
#<
#
# Function:
#	p6_aws_cloudtrail_tags_remove(resource_id)
#
#  Args:
#	resource_id - 
#
#>
######################################################################
p6_aws_cloudtrail_tags_remove() {
    local resource_id="$1"
    shift 1

    p6_run_write_cmd aws cloudtrail remove-tags --resource-id $resource_id "$@"
}
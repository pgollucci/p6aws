######################################################################
#<
#
# Function:
#	p6_aws_cloudtrail_tags_list(resource_id_list)
#
#  Args:
#	resource_id_list - 
#
#>
######################################################################
p6_aws_cloudtrail_tags_list() {
    local resource_id_list="$1"
    shift 1

    p6_run_read_cmd aws cloudtrail list-tags --resource-id-list $resource_id_list "$@"
}
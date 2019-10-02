######################################################################
#<
#
# Function:
#	p6_aws_cloudhsmv2_tags_list(resource_id)
#
#  Args:
#	resource_id - 
#
#>
######################################################################
p6_aws_cloudhsmv2_tags_list() {
    local resource_id="$1"
    shift 1

    p6_run_read_cmd aws cloudhsmv2 list-tags --resource-id $resource_id "$@"
}
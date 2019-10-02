######################################################################
#<
#
# Function:
#	p6_aws_ram_resource_share_update(resource_share_arn)
#
#  Args:
#	resource_share_arn - 
#
#>
######################################################################
p6_aws_ram_resource_share_update() {
    local resource_share_arn="$1"
    shift 1

    p6_run_write_cmd aws ram update-resource-share --resource-share-arn $resource_share_arn "$@"
}
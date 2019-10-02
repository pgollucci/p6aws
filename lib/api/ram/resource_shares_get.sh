######################################################################
#<
#
# Function:
#	p6_aws_ram_resource_shares_get(resource_owner)
#
#  Args:
#	resource_owner - 
#
#>
######################################################################
p6_aws_ram_resource_shares_get() {
    local resource_owner="$1"
    shift 1

    p6_run_read_cmd aws ram get-resource-shares --resource-owner $resource_owner "$@"
}
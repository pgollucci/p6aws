######################################################################
#<
#
# Function:
#	p6_aws_lakeformation_permissions_revoke(principal, resource, permissions)
#
#  Args:
#	principal - 
#	resource - 
#	permissions - 
#
#>
######################################################################
p6_aws_lakeformation_permissions_revoke() {
    local principal="$1"
    local resource="$2"
    local permissions="$3"
    shift 3

    p6_run_write_cmd aws lakeformation revoke-permissions --principal $principal --resource $resource --permissions $permissions "$@"
}
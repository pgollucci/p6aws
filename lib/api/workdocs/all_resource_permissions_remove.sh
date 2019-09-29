######################################################################
#<
#
# Function:
#      = p6_aws_workdocs_all_resource_permissions_remove(resource_id)
#
# Arg(s):
#    resource_id - 
#
#
#>
######################################################################
p6_aws_workdocs_all_resource_permissions_remove() {
    local resource_id="$1"
    shift 1

    p6_run_write_cmd aws workdocs remove-all-resource-permissions --resource-id $resource_id "$@"
}
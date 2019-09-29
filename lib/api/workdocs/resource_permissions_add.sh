######################################################################
#<
#
# Function:
#      = p6_aws_workdocs_resource_permissions_add(resource_id, principals)
#
# Arg(s):
#    resource_id - 
#    principals - 
#
#
#>
######################################################################
p6_aws_workdocs_resource_permissions_add() {
    local resource_id="$1"
    local principals="$2"
    shift 2

    p6_run_write_cmd aws workdocs add-resource-permissions --resource-id $resource_id --principals $principals "$@"
}
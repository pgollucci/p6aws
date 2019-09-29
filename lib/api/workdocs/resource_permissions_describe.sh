######################################################################
#<
#
# Function:
#      = p6_aws_workdocs_resource_permissions_describe(resource_id)
#
# Arg(s):
#    resource_id - 
#
#
#>
######################################################################
p6_aws_workdocs_resource_permissions_describe() {
    local resource_id="$1"
    shift 1

    p6_run_read_cmd aws workdocs describe-resource-permissions --resource-id $resource_id "$@"
}
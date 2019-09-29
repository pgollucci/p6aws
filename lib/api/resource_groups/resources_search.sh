######################################################################
#<
#
# Function:
#      = p6_aws_resource_groups_resources_search(resource_query)
#
# Arg(s):
#    resource_query - 
#
#
#>
######################################################################
p6_aws_resource_groups_resources_search() {
    local resource_query="$1"
    shift 1

    p6_run_write_cmd aws resource-groups search-resources --resource-query $resource_query "$@"
}
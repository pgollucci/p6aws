######################################################################
#<
#
# Function:
#      = p6_aws_ram_resources_list(resource_owner)
#
# Arg(s):
#    resource_owner - 
#
#
#>
######################################################################
p6_aws_ram_resources_list() {
    local resource_owner="$1"
    shift 1

    p6_run_read_cmd aws ram list-resources --resource-owner $resource_owner "$@"
}
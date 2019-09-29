######################################################################
#<
#
# Function:
#      = p6_aws_ram_resource_share_delete(resource_share_arn)
#
# Arg(s):
#    resource_share_arn - 
#
#
#>
######################################################################
p6_aws_ram_resource_share_delete() {
    local resource_share_arn="$1"
    shift 1

    p6_run_write_cmd aws ram delete-resource-share --resource-share-arn $resource_share_arn "$@"
}
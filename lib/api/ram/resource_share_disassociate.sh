######################################################################
#<
#
# Function:
#      = p6_aws_ram_resource_share_disassociate(resource_share_arn)
#
# Arg(s):
#    resource_share_arn - 
#
#
#>
######################################################################
p6_aws_ram_resource_share_disassociate() {
    local resource_share_arn="$1"
    shift 1

    p6_run_write_cmd aws ram disassociate-resource-share --resource-share-arn $resource_share_arn "$@"
}
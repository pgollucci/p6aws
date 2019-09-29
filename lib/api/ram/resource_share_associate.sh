######################################################################
#<
#
# Function:
#      = p6_aws_ram_resource_share_associate(resource_share_arn)
#
# Arg(s):
#    resource_share_arn - 
#
#
#>
######################################################################
p6_aws_ram_resource_share_associate() {
    local resource_share_arn="$1"
    shift 1

    p6_run_write_cmd aws ram associate-resource-share --resource-share-arn $resource_share_arn "$@"
}
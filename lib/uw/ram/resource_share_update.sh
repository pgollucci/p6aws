######################################################################
#<
#
# Function:
#      = p6_aws_ram_external_principals(resource_share_arn)
#
# Arg(s):
#    resource_share_arn - 
#
#
#>
######################################################################
p6_aws_ram_external_principals() {
        local resource_share_arn="$1"
        shift 1

    cond_log_and_run aws ram update-resource-share --resource-share-arn $resource_share_arn --allow-external-principals "$@"
}

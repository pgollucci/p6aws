######################################################################
#<
#
# Function:
#      = p6_aws_waf_permission_policy_put(resource_arn, policy)
#
# Arg(s):
#    resource_arn - 
#    policy - 
#
#
#>
######################################################################
p6_aws_waf_permission_policy_put() {
    local resource_arn="$1"
    local policy="$2"
    shift 2

    p6_run_write_cmd aws waf put-permission-policy --resource-arn $resource_arn --policy $policy "$@"
}
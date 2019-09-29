######################################################################
#<
#
# Function:
#      = p6_aws_waf_permission_policy_get(resource_arn)
#
# Arg(s):
#    resource_arn - 
#
#
#>
######################################################################
p6_aws_waf_permission_policy_get() {
    local resource_arn="$1"
    shift 1

    p6_run_read_cmd aws waf get-permission-policy --resource-arn $resource_arn "$@"
}
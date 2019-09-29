######################################################################
#<
#
# Function:
#      = p6_aws_waf_permission_policy_delete(resource_arn)
#
# Arg(s):
#    resource_arn - 
#
#
#>
######################################################################
p6_aws_waf_permission_policy_delete() {
    local resource_arn="$1"
    shift 1

    p6_run_write_cmd aws waf delete-permission-policy --resource-arn $resource_arn "$@"
}
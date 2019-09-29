######################################################################
#<
#
# Function:
#      = p6_aws_waf_regional_web_acl_disassociate(resource_arn)
#
# Arg(s):
#    resource_arn - 
#
#
#>
######################################################################
p6_aws_waf_regional_web_acl_disassociate() {
    local resource_arn="$1"
    shift 1

    p6_run_write_cmd aws waf-regional disassociate-web-acl --resource-arn $resource_arn "$@"
}
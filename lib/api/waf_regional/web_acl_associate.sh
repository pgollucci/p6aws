######################################################################
#<
#
# Function:
#      = p6_aws_waf_regional_web_acl_associate(web_acl_id, resource_arn)
#
# Arg(s):
#    web_acl_id - 
#    resource_arn - 
#
#
#>
######################################################################
p6_aws_waf_regional_web_acl_associate() {
    local web_acl_id="$1"
    local resource_arn="$2"
    shift 2

    p6_run_write_cmd aws waf-regional associate-web-acl --web-acl-id $web_acl_id --resource-arn $resource_arn "$@"
}
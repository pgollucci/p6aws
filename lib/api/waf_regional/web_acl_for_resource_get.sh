######################################################################
#<
#
# Function:
#	p6_aws_waf_regional_web_acl_for_resource_get(resource_arn)
#
#  Args:
#	resource_arn - 
#
#>
######################################################################
p6_aws_waf_regional_web_acl_for_resource_get() {
    local resource_arn="$1"
    shift 1

    p6_run_read_cmd aws waf-regional get-web-acl-for-resource --resource-arn $resource_arn "$@"
}
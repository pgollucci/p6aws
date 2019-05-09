p6_aws_waf_regional_web_acl_disassociate() {
    local resource_arn="$1"
    shift 1

    p6_log_or_run aws waf-regional disassociate-web-acl --resource-arn $resource_arn "$@"
}

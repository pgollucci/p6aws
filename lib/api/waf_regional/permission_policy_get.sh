p6_aws_waf_regional_permission_policy_get() {
    local resource_arn="$1"
    shift 1

    p6_log_and_run aws waf-regional get-permission-policy --resource-arn $resource_arn "$@"
}

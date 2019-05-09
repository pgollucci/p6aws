p6_aws_waf_permission_policy_get() {
    local resource_arn="$1"
    shift 1

    p6_log_and_run aws waf get-permission-policy --resource-arn $resource_arn "$@"
}

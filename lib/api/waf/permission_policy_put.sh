p6_aws_waf_permission_policy_put() {
    local resource_arn="$1"
    local policy="$2"
    shift 2

    p6_log_or_run aws waf put-permission-policy --resource-arn $resource_arn --policy $policy "$@"
}

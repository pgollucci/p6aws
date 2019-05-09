p6_aws_waf_permission_policy_delete() {
    local resource_arn="$1"
    shift 1

    p6_log_or_run aws waf delete-permission-policy --resource-arn $resource_arn "$@"
}

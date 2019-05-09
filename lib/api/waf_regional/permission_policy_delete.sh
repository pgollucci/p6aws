p6_aws_waf_regional_permission_policy_delete() {
    local resource_arn="$1"
    shift 1

    p6_run_write_cmd aws waf-regional delete-permission-policy --resource-arn $resource_arn "$@"
}

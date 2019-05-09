p6_aws_secretsmanager_resource_policy_put() {
    local secret_id="$1"
    local resource_policy="$2"
    shift 2

    p6_log_or_run aws secretsmanager put-resource-policy --secret-id $secret_id --resource-policy $resource_policy "$@"
}

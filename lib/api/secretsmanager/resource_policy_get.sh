p6_aws_secretsmanager_resource_policy_get() {
    local secret_id="$1"
    shift 1

    p6_log_and_run aws secretsmanager get-resource-policy --secret-id $secret_id "$@"
}

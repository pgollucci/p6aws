p6_aws_secretsmanager_resource_policy_delete() {
    local secret_id="$1"
    shift 1

    p6_log_or_run aws secretsmanager delete-resource-policy --secret-id $secret_id "$@"
}

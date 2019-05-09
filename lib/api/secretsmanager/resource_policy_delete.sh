p6_aws_secretsmanager_resource_policy_delete() {
    local secret_id="$1"
    shift 1

    p6_run_write_cmd aws secretsmanager delete-resource-policy --secret-id $secret_id "$@"
}

p6_aws_secretsmanager_secret_delete() {
    local secret_id="$1"
    shift 1

    p6_run_write_cmd aws secretsmanager delete-secret --secret-id $secret_id "$@"
}

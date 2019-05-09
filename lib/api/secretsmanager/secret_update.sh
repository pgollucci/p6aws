p6_aws_secretsmanager_secret_update() {
    local secret_id="$1"
    shift 1

    p6_log_or_run aws secretsmanager update-secret --secret-id $secret_id "$@"
}

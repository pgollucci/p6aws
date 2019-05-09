p6_aws_secretsmanager_secret_rotate() {
    local secret_id="$1"
    shift 1

    p6_log_or_run aws secretsmanager rotate-secret --secret-id $secret_id "$@"
}

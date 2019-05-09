p6_aws_secretsmanager_rotate_secret_cancel() {
    local secret_id="$1"
    shift 1

    p6_log_or_run aws secretsmanager cancel-rotate-secret --secret-id $secret_id "$@"
}

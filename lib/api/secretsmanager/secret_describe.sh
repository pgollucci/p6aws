p6_aws_secretsmanager_secret_describe() {
    local secret_id="$1"
    shift 1

    p6_log_and_run aws secretsmanager describe-secret --secret-id $secret_id "$@"
}

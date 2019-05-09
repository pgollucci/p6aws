p6_aws_secretsmanager_secret_value_put() {
    local secret_id="$1"
    shift 1

    p6_log_or_run aws secretsmanager put-secret-value --secret-id $secret_id "$@"
}

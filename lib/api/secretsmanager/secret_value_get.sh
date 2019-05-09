p6_aws_secretsmanager_secret_value_get() {
    local secret_id="$1"
    shift 1

    p6_run_read_cmd aws secretsmanager get-secret-value --secret-id $secret_id "$@"
}

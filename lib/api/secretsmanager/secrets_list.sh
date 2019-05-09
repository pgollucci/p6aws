p6_aws_secretsmanager_secrets_list() {

    p6_log_and_run aws secretsmanager list-secrets "$@"
}

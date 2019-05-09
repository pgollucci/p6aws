p6_aws_secretsmanager_random_password_get() {

    p6_log_and_run aws secretsmanager get-random-password "$@"
}

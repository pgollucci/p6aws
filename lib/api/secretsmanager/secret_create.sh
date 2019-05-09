p6_aws_secretsmanager_secret_create() {
    local name="$1"
    shift 1

    p6_log_or_run aws secretsmanager create-secret --name $name "$@"
}

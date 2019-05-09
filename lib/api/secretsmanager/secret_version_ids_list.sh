p6_aws_secretsmanager_secret_version_ids_list() {
    local secret_id="$1"
    shift 1

    p6_log_and_run aws secretsmanager list-secret-version-ids --secret-id $secret_id "$@"
}

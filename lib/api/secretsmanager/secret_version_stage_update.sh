p6_aws_secretsmanager_secret_version_stage_update() {
    local secret_id="$1"
    local version_stage="$2"
    shift 2

    p6_run_write_cmd aws secretsmanager update-secret-version-stage --secret-id $secret_id --version-stage $version_stage "$@"
}

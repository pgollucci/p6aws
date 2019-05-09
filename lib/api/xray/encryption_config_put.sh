p6_aws_xray_encryption_config_put() {
    local type="$1"
    shift 1

    p6_log_or_run aws xray put-encryption-config --type $type "$@"
}

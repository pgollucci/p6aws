p6_aws_license_manager_license_configuration_update() {
    local license_configuration_arn="$1"
    shift 1

    p6_log_or_run aws license-manager update-license-configuration --license-configuration-arn $license_configuration_arn "$@"
}

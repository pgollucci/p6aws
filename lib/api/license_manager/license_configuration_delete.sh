p6_aws_license_manager_license_configuration_delete() {
    local license_configuration_arn="$1"
    shift 1

    p6_log_or_run aws license-manager delete-license-configuration --license-configuration-arn $license_configuration_arn "$@"
}

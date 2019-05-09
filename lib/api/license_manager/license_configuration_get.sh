p6_aws_license_manager_license_configuration_get() {
    local license_configuration_arn="$1"
    shift 1

    p6_run_read_cmd aws license-manager get-license-configuration --license-configuration-arn $license_configuration_arn "$@"
}

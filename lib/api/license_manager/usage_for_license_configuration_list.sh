p6_aws_license_manager_usage_for_license_configuration_list() {
    local license_configuration_arn="$1"
    shift 1

    p6_run_read_cmd aws license-manager list-usage-for-license-configuration --license-configuration-arn $license_configuration_arn "$@"
}

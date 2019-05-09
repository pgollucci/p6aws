p6_aws_license_manager_associations_for_license_configuration_list() {
    local license_configuration_arn="$1"
    shift 1

    p6_log_and_run aws license-manager list-associations-for-license-configuration --license-configuration-arn $license_configuration_arn "$@"
}

p6_aws_configservice_retention_configuration_delete() {
    local retention_configuration_name="$1"
    shift 1

    p6_run_write_cmd aws configservice delete-retention-configuration --retention-configuration-name $retention_configuration_name "$@"
}

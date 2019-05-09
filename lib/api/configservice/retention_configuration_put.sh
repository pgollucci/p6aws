p6_aws_configservice_retention_configuration_put() {
    local retention_period_in_days="$1"
    shift 1

    p6_run_write_cmd aws configservice put-retention-configuration --retention-period-in-days $retention_period_in_days "$@"
}

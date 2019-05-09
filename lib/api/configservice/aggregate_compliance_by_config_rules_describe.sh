p6_aws_configservice_aggregate_compliance_by_config_rules_describe() {
    local configuration_aggregator_name="$1"
    shift 1

    p6_run_read_cmd aws configservice describe-aggregate-compliance-by-config-rules --configuration-aggregator-name $configuration_aggregator_name "$@"
}

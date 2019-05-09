p6_aws_configservice_aggregate_config_rule_compliance_summary_get() {
    local configuration_aggregator_name="$1"
    shift 1

    p6_run_read_cmd aws configservice get-aggregate-config-rule-compliance-summary --configuration-aggregator-name $configuration_aggregator_name "$@"
}

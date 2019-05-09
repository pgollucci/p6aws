p6_aws_configservice_aggregate_compliance_details_by_config_rule_get() {
    local configuration_aggregator_name="$1"
    local config_rule_name="$2"
    local account_id="$3"
    local aws_region="$4"
    shift 4

    p6_run_read_cmd aws configservice get-aggregate-compliance-details-by-config-rule --configuration-aggregator-name $configuration_aggregator_name --config-rule-name $config_rule_name --account-id $account_id --aws-region $aws_region "$@"
}

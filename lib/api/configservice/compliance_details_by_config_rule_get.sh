p6_aws_configservice_compliance_details_by_config_rule_get() {
    local config_rule_name="$1"
    shift 1

    p6_run_read_cmd aws configservice get-compliance-details-by-config-rule --config-rule-name $config_rule_name "$@"
}

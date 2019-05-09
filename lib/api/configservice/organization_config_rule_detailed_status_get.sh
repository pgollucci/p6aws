p6_aws_configservice_organization_config_rule_detailed_status_get() {
    local organization_config_rule_name="$1"
    shift 1

    p6_run_read_cmd aws configservice get-organization-config-rule-detailed-status --organization-config-rule-name $organization_config_rule_name "$@"
}

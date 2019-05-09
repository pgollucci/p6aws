p6_aws_configservice_remediation_execution_start() {
    local config_rule_name="$1"
    local resource_keys="$2"
    shift 2

    p6_run_write_cmd aws configservice start-remediation-execution --config-rule-name $config_rule_name --resource-keys $resource_keys "$@"
}

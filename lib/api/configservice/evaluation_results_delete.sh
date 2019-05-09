p6_aws_configservice_evaluation_results_delete() {
    local config_rule_name="$1"
    shift 1

    p6_run_write_cmd aws configservice delete-evaluation-results --config-rule-name $config_rule_name "$@"
}

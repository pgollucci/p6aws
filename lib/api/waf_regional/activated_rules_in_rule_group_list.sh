p6_aws_waf_regional_activated_rules_in_rule_group_list() {

    p6_log_and_run aws waf-regional list-activated-rules-in-rule-group "$@"
}

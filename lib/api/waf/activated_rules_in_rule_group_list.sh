p6_aws_waf_activated_rules_in_rule_group_list() {

    p6_run_read_cmd aws waf list-activated-rules-in-rule-group "$@"
}

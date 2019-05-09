p6_aws_waf_regional_subscribed_rule_groups_list() {

    p6_run_read_cmd aws waf-regional list-subscribed-rule-groups "$@"
}

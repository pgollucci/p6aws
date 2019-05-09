p6_aws_waf_subscribed_rule_groups_list() {

    p6_log_and_run aws waf list-subscribed-rule-groups "$@"
}

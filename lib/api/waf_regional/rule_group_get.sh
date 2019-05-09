p6_aws_waf_regional_rule_group_get() {
    local rule_group_id="$1"
    shift 1

    p6_run_read_cmd aws waf-regional get-rule-group --rule-group-id $rule_group_id "$@"
}

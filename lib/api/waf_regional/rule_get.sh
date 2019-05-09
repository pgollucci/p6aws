p6_aws_waf_regional_rule_get() {
    local rule_id="$1"
    shift 1

    p6_log_and_run aws waf-regional get-rule --rule-id $rule_id "$@"
}

p6_aws_waf_rule_get() {
    local rule_id="$1"
    shift 1

    p6_log_and_run aws waf get-rule --rule-id $rule_id "$@"
}

p6_aws_waf_rate_based_rule_get() {
    local rule_id="$1"
    shift 1

    p6_run_read_cmd aws waf get-rate-based-rule --rule-id $rule_id "$@"
}

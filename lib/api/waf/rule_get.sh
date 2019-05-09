p6_aws_waf_rule_get() {
    local rule_id="$1"
    shift 1

    p6_run_read_cmd aws waf get-rule --rule-id $rule_id "$@"
}

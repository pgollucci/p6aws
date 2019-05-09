p6_aws_waf_regional_rate_based_rule_delete() {
    local rule_id="$1"
    local change_token="$2"
    shift 2

    p6_run_write_cmd aws waf-regional delete-rate-based-rule --rule-id $rule_id --change-token $change_token "$@"
}

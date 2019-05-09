p6_aws_waf_rule_delete() {
    local rule_id="$1"
    local change_token="$2"
    shift 2

    p6_log_or_run aws waf delete-rule --rule-id $rule_id --change-token $change_token "$@"
}

p6_aws_waf_rule_group_delete() {
    local rule_group_id="$1"
    local change_token="$2"
    shift 2

    p6_log_or_run aws waf delete-rule-group --rule-group-id $rule_group_id --change-token $change_token "$@"
}

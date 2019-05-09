p6_aws_waf_regional_rule_group_delete() {
    local rule_group_id="$1"
    local change_token="$2"
    shift 2

    p6_run_write_cmd aws waf-regional delete-rule-group --rule-group-id $rule_group_id --change-token $change_token "$@"
}

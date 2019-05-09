p6_aws_waf_regional_rule_group_update() {
    local rule_group_id="$1"
    local updates="$2"
    local change_token="$3"
    shift 3

    p6_log_or_run aws waf-regional update-rule-group --rule-group-id $rule_group_id --updates $updates --change-token $change_token "$@"
}

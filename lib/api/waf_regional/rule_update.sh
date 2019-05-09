p6_aws_waf_regional_rule_update() {
    local rule_id="$1"
    local change_token="$2"
    local updates="$3"
    shift 3

    p6_run_write_cmd aws waf-regional update-rule --rule-id $rule_id --change-token $change_token --updates $updates "$@"
}

p6_aws_gamelift_matchmaking_rule_set_validate() {
    local rule_set_body="$1"
    shift 1

    p6_log_or_run aws gamelift validate-matchmaking-rule-set --rule-set-body $rule_set_body "$@"
}

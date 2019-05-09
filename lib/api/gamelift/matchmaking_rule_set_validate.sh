p6_aws_gamelift_matchmaking_rule_set_validate() {
    local rule_set_body="$1"
    shift 1

    p6_run_write_cmd aws gamelift validate-matchmaking-rule-set --rule-set-body $rule_set_body "$@"
}

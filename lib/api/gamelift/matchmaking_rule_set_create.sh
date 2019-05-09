p6_aws_gamelift_matchmaking_rule_set_create() {
    local name="$1"
    local rule_set_body="$2"
    shift 2

    p6_log_or_run aws gamelift create-matchmaking-rule-set --name $name --rule-set-body $rule_set_body "$@"
}

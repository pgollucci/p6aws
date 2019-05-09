p6_aws_gamelift_matchmaking_configuration_create() {
    local name="$1"
    local game_session_queue_arns="$2"
    local request_timeout_seconds="$3"
    local acceptance_required="$4"
    local rule_set_name="$5"
    shift 5

    p6_run_write_cmd aws gamelift create-matchmaking-configuration --name $name --game-session-queue-arns $game_session_queue_arns --request-timeout-seconds $request_timeout_seconds --acceptance-required $acceptance_required --rule-set-name $rule_set_name "$@"
}

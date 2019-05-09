p6_aws_gamelift_game_session_placement_describe() {
    local placement_id="$1"
    shift 1

    p6_log_and_run aws gamelift describe-game-session-placement --placement-id $placement_id "$@"
}

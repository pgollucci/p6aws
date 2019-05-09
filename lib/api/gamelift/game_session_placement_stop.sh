p6_aws_gamelift_game_session_placement_stop() {
    local placement_id="$1"
    shift 1

    p6_log_or_run aws gamelift stop-game-session-placement --placement-id $placement_id "$@"
}

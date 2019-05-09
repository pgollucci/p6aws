p6_aws_gamelift_game_session_placement_stop() {
    local placement_id="$1"
    shift 1

    p6_run_write_cmd aws gamelift stop-game-session-placement --placement-id $placement_id "$@"
}

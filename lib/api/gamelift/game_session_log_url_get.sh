p6_aws_gamelift_game_session_log_url_get() {
    local game_session_id="$1"
    shift 1

    p6_run_read_cmd aws gamelift get-game-session-log-url --game-session-id $game_session_id "$@"
}

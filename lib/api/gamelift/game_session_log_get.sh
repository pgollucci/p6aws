p6_aws_gamelift_game_session_log_get() {
    local game_session_id="$1"
    local save_as="$2"
    shift 2

    p6_run_read_cmd aws gamelift get-game-session-log --game-session-id $game_session_id --save-as $save_as "$@"
}

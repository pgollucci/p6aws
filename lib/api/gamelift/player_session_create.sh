p6_aws_gamelift_player_session_create() {
    local game_session_id="$1"
    local player_id="$2"
    shift 2

    p6_log_or_run aws gamelift create-player-session --game-session-id $game_session_id --player-id $player_id "$@"
}

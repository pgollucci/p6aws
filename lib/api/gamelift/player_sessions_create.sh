p6_aws_gamelift_player_sessions_create() {
    local game_session_id="$1"
    local player_ids="$2"
    shift 2

    p6_log_or_run aws gamelift create-player-sessions --game-session-id $game_session_id --player-ids $player_ids "$@"
}

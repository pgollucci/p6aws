######################################################################
#<
#
# Function:
#      = p6_aws_gamelift_player_sessions_create(game_session_id, player_ids)
#
# Arg(s):
#    game_session_id - 
#    player_ids - 
#
#
#>
######################################################################
p6_aws_gamelift_player_sessions_create() {
    local game_session_id="$1"
    local player_ids="$2"
    shift 2

    p6_run_write_cmd aws gamelift create-player-sessions --game-session-id $game_session_id --player-ids $player_ids "$@"
}
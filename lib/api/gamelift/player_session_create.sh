######################################################################
#<
#
# Function:
#	p6_aws_gamelift_player_session_create(game_session_id, player_id)
#
#  Args:
#	game_session_id - 
#	player_id - 
#
#>
######################################################################
p6_aws_gamelift_player_session_create() {
    local game_session_id="$1"
    local player_id="$2"
    shift 2

    p6_run_write_cmd aws gamelift create-player-session --game-session-id $game_session_id --player-id $player_id "$@"
}
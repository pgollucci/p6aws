######################################################################
#<
#
# Function:
#      = p6_aws_gamelift_game_session_update(game_session_id)
#
# Arg(s):
#    game_session_id - 
#
#
#>
######################################################################
p6_aws_gamelift_game_session_update() {
    local game_session_id="$1"
    shift 1

    p6_run_write_cmd aws gamelift update-game-session --game-session-id $game_session_id "$@"
}
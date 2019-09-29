######################################################################
#<
#
# Function:
#      = p6_aws_gamelift_game_session_create(maximum_player_session_count)
#
# Arg(s):
#    maximum_player_session_count - 
#
#
#>
######################################################################
p6_aws_gamelift_game_session_create() {
    local maximum_player_session_count="$1"
    shift 1

    p6_run_write_cmd aws gamelift create-game-session --maximum-player-session-count $maximum_player_session_count "$@"
}
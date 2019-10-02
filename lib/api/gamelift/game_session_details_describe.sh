######################################################################
#<
#
# Function:
#	p6_aws_gamelift_game_session_details_describe()
#
#>
######################################################################
p6_aws_gamelift_game_session_details_describe() {

    p6_run_read_cmd aws gamelift describe-game-session-details "$@"
}
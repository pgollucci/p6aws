######################################################################
#<
#
# Function:
#	p6_aws_gamelift_game_session_queues_describe()
#
#>
######################################################################
p6_aws_gamelift_game_session_queues_describe() {

    p6_run_read_cmd aws gamelift describe-game-session-queues "$@"
}
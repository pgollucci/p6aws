######################################################################
#<
#
# Function:
#	p6_aws_gamelift_player_sessions_describe()
#
#>
######################################################################
p6_aws_gamelift_player_sessions_describe() {

    p6_run_read_cmd aws gamelift describe-player-sessions "$@"
}
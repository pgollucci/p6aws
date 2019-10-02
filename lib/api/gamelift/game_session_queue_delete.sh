######################################################################
#<
#
# Function:
#	p6_aws_gamelift_game_session_queue_delete(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_gamelift_game_session_queue_delete() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws gamelift delete-game-session-queue --name $name "$@"
}
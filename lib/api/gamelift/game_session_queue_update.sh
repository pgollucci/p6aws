######################################################################
#<
#
# Function:
#      = p6_aws_gamelift_game_session_queue_update(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_gamelift_game_session_queue_update() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws gamelift update-game-session-queue --name $name "$@"
}
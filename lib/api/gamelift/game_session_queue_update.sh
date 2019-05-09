p6_aws_gamelift_game_session_queue_update() {
    local name="$1"
    shift 1

    p6_log_or_run aws gamelift update-game-session-queue --name $name "$@"
}

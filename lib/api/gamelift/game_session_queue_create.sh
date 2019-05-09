p6_aws_gamelift_game_session_queue_create() {
    local name="$1"
    shift 1

    p6_log_or_run aws gamelift create-game-session-queue --name $name "$@"
}

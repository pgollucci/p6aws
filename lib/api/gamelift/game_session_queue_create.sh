p6_aws_gamelift_game_session_queue_create() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws gamelift create-game-session-queue --name $name "$@"
}

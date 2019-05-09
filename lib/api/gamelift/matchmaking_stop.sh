p6_aws_gamelift_matchmaking_stop() {
    local ticket_id="$1"
    shift 1

    p6_run_write_cmd aws gamelift stop-matchmaking --ticket-id $ticket_id "$@"
}

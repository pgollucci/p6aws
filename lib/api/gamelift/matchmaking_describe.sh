p6_aws_gamelift_matchmaking_describe() {
    local ticket_ids="$1"
    shift 1

    p6_run_read_cmd aws gamelift describe-matchmaking --ticket-ids $ticket_ids "$@"
}

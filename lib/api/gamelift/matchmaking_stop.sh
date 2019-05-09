p6_aws_gamelift_matchmaking_stop() {
    local ticket_id="$1"
    shift 1

    p6_log_or_run aws gamelift stop-matchmaking --ticket-id $ticket_id "$@"
}

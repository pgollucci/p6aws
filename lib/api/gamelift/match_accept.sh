p6_aws_gamelift_match_accept() {
    local ticket_id="$1"
    local player_ids="$2"
    local acceptance_type="$3"
    shift 3

    p6_log_or_run aws gamelift accept-match --ticket-id $ticket_id --player-ids $player_ids --acceptance-type $acceptance_type "$@"
}

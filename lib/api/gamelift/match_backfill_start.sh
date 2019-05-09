p6_aws_gamelift_match_backfill_start() {
    local configuration_name="$1"
    local game_session_arn="$2"
    local players="$3"
    shift 3

    p6_log_or_run aws gamelift start-match-backfill --configuration-name $configuration_name --game-session-arn $game_session_arn --players $players "$@"
}

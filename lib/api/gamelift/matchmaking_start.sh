p6_aws_gamelift_matchmaking_start() {
    local configuration_name="$1"
    local players="$2"
    shift 2

    p6_log_or_run aws gamelift start-matchmaking --configuration-name $configuration_name --players $players "$@"
}

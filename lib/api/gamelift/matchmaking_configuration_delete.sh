p6_aws_gamelift_matchmaking_configuration_delete() {
    local name="$1"
    shift 1

    p6_log_or_run aws gamelift delete-matchmaking-configuration --name $name "$@"
}

p6_aws_gamelift_matchmaking_configuration_update() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws gamelift update-matchmaking-configuration --name $name "$@"
}

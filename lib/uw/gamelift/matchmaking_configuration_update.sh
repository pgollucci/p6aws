p6_aws_gamelift_required() {
        local name="$1"
        shift 1

    cond_log_and_run aws gamelift update-matchmaking-configuration --name $name --acceptance-required "$@"
}


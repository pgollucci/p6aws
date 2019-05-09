p6_aws_robomaker_simulation_job_restart() {
    local job="$1"
    shift 1

    p6_log_or_run aws robomaker restart-simulation-job --job $job "$@"
}

p6_aws_robomaker_simulation_job_cancel() {
    local job="$1"
    shift 1

    p6_log_or_run aws robomaker cancel-simulation-job --job $job "$@"
}

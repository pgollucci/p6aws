p6_aws_robomaker_simulation_job_describe() {
    local job="$1"
    shift 1

    p6_log_and_run aws robomaker describe-simulation-job --job $job "$@"
}

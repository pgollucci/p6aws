p6_aws_robomaker_describe_simulation_job_batch() {
    local jobs="$1"
    shift 1

    p6_log_and_run aws robomaker batch-describe-simulation-job --jobs $jobs "$@"
}

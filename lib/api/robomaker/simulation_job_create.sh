p6_aws_robomaker_simulation_job_create() {
    local max_job_duration_in_seconds="$1"
    local iam_role="$2"
    shift 2

    p6_log_or_run aws robomaker create-simulation-job --max-job-duration-in-seconds $max_job_duration_in_seconds --iam-role $iam_role "$@"
}

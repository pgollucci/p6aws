p6_aws_glue_job_runs_get() {
    local job_name="$1"
    shift 1

    p6_log_and_run aws glue get-job-runs --job-name $job_name "$@"
}

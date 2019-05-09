p6_aws_glue_job_run_start() {
    local job_name="$1"
    shift 1

    p6_log_or_run aws glue start-job-run --job-name $job_name "$@"
}

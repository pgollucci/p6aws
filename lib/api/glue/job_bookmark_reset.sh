p6_aws_glue_job_bookmark_reset() {
    local job_name="$1"
    shift 1

    p6_log_or_run aws glue reset-job-bookmark --job-name $job_name "$@"
}

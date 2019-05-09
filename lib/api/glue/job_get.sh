p6_aws_glue_job_get() {
    local job_name="$1"
    shift 1

    p6_log_and_run aws glue get-job --job-name $job_name "$@"
}

p6_aws_glue_get_jobs_batch() {
    local job_names="$1"
    shift 1

    p6_run_read_cmd aws glue batch-get-jobs --job-names $job_names "$@"
}

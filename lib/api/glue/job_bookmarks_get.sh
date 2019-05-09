p6_aws_glue_job_bookmarks_get() {
    local job_name="$1"
    shift 1

    p6_run_read_cmd aws glue get-job-bookmarks --job-name $job_name "$@"
}

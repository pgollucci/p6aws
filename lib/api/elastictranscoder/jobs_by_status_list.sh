p6_aws_elastictranscoder_jobs_by_status_list() {
    local status="$1"
    shift 1

    p6_run_read_cmd aws elastictranscoder list-jobs-by-status --status $status "$@"
}

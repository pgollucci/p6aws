p6_aws_snowball_job_cancel() {
    local job_id="$1"
    shift 1

    p6_log_or_run aws snowball cancel-job --job-id $job_id "$@"
}

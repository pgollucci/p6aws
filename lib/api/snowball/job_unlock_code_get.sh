p6_aws_snowball_job_unlock_code_get() {
    local job_id="$1"
    shift 1

    p6_log_and_run aws snowball get-job-unlock-code --job-id $job_id "$@"
}

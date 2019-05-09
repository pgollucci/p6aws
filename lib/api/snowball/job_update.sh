p6_aws_snowball_job_update() {
    local job_id="$1"
    shift 1

    p6_run_write_cmd aws snowball update-job --job-id $job_id "$@"
}

p6_aws_importexport_job_cancel() {
    local job_id="$1"
    shift 1

    p6_log_or_run aws importexport cancel-job --job-id $job_id "$@"
}

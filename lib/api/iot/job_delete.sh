p6_aws_iot_job_delete() {
    local job_id="$1"
    shift 1

    p6_log_or_run aws iot delete-job --job-id $job_id "$@"
}

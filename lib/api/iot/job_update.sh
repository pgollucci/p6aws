p6_aws_iot_job_update() {
    local job_id="$1"
    shift 1

    p6_log_or_run aws iot update-job --job-id $job_id "$@"
}

p6_aws_iot_job_cancel() {
    local job_id="$1"
    shift 1

    p6_log_or_run aws iot cancel-job --job-id $job_id "$@"
}

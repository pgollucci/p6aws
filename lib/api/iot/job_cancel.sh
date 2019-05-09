p6_aws_iot_job_cancel() {
    local job_id="$1"
    shift 1

    p6_run_write_cmd aws iot cancel-job --job-id $job_id "$@"
}

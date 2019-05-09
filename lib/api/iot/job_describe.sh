p6_aws_iot_job_describe() {
    local job_id="$1"
    shift 1

    p6_run_read_cmd aws iot describe-job --job-id $job_id "$@"
}

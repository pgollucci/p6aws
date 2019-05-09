p6_aws_iot_job_create() {
    local job_id="$1"
    local targets="$2"
    shift 2

    p6_log_or_run aws iot create-job --job-id $job_id --targets $targets "$@"
}

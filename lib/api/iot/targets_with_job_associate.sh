p6_aws_iot_targets_with_job_associate() {
    local targets="$1"
    local job_id="$2"
    shift 2

    p6_log_and_run aws iot associate-targets-with-job --targets $targets --job-id $job_id "$@"
}

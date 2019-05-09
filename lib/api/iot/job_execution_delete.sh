p6_aws_iot_job_execution_delete() {
    local job_id="$1"
    local thing_name="$2"
    local execution_number="$3"
    shift 3

    p6_log_or_run aws iot delete-job-execution --job-id $job_id --thing-name $thing_name --execution-number $execution_number "$@"
}

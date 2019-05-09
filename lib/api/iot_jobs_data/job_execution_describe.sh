p6_aws_iot_jobs_data_job_execution_describe() {
    local job_id="$1"
    local thing_name="$2"
    shift 2

    p6_run_read_cmd aws iot-jobs-data describe-job-execution --job-id $job_id --thing-name $thing_name "$@"
}

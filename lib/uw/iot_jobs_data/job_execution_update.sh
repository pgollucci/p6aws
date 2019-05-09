aws_iot_jobs_data_job_execution_state() {
        local job_id="$1"
        local thing_name="$2"
        local status="$3"
        shift 3

    cond_log_and_run aws iot-jobs-data update-job-execution --job-id $job_id --thing-name $thing_name --status $status --include-job-execution-state "$@"
}

aws_iot_jobs_data_job_document() {
        local job_id="$1"
        local thing_name="$2"
        local status="$3"
        shift 3

    cond_log_and_run aws iot-jobs-data update-job-execution --job-id $job_id --thing-name $thing_name --status $status --include-job-document "$@"
}


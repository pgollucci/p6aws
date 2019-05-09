p6_aws_iot_jobs_data_pending_job_executions_get() {
    local thing_name="$1"
    shift 1

    p6_log_and_run aws iot-jobs-data get-pending-job-executions --thing-name $thing_name "$@"
}

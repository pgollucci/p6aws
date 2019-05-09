p6_aws_iot_job_executions_for_job_list() {
    local job_id="$1"
    shift 1

    p6_run_read_cmd aws iot list-job-executions-for-job --job-id $job_id "$@"
}

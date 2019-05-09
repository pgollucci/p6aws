p6_aws_iot_job_executions_for_thing_list() {
    local thing_name="$1"
    shift 1

    p6_log_and_run aws iot list-job-executions-for-thing --thing-name $thing_name "$@"
}

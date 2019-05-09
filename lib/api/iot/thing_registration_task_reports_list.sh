p6_aws_iot_thing_registration_task_reports_list() {
    local task_id="$1"
    local report_type="$2"
    shift 2

    p6_log_and_run aws iot list-thing-registration-task-reports --task-id $task_id --report-type $report_type "$@"
}

p6_aws_ssm_maintenance_window_execution_task_get() {
    local window_execution_id="$1"
    local task_id="$2"
    shift 2

    p6_run_read_cmd aws ssm get-maintenance-window-execution-task --window-execution-id $window_execution_id --task-id $task_id "$@"
}

p6_aws_ssm_maintenance_window_execution_task_invocation_get() {
    local window_execution_id="$1"
    local task_id="$2"
    local invocation_id="$3"
    shift 3

    p6_log_and_run aws ssm get-maintenance-window-execution-task-invocation --window-execution-id $window_execution_id --task-id $task_id --invocation-id $invocation_id "$@"
}

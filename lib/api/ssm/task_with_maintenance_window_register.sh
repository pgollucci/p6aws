p6_aws_ssm_task_with_maintenance_window_register() {
    local window_id="$1"
    local targets="$2"
    local task_arn="$3"
    local task_type="$4"
    local max_concurrency="$5"
    local max_errors="$6"
    shift 6

    p6_run_write_cmd aws ssm register-task-with-maintenance-window --window-id $window_id --targets $targets --task-arn $task_arn --task-type $task_type --max-concurrency $max_concurrency --max-errors $max_errors "$@"
}

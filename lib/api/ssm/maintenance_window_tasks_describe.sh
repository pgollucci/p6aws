p6_aws_ssm_maintenance_window_tasks_describe() {
    local window_id="$1"
    shift 1

    p6_run_read_cmd aws ssm describe-maintenance-window-tasks --window-id $window_id "$@"
}

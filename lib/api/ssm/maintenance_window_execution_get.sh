p6_aws_ssm_maintenance_window_execution_get() {
    local window_execution_id="$1"
    shift 1

    p6_run_read_cmd aws ssm get-maintenance-window-execution --window-execution-id $window_execution_id "$@"
}

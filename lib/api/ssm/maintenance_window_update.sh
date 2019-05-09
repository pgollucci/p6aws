p6_aws_ssm_maintenance_window_update() {
    local window_id="$1"
    shift 1

    p6_log_or_run aws ssm update-maintenance-window --window-id $window_id "$@"
}

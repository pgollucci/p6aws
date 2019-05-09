p6_aws_ssm_target_with_maintenance_window_register() {
    local window_id="$1"
    local resource_type="$2"
    local targets="$3"
    shift 3

    p6_run_read_cmd aws ssm register-target-with-maintenance-window --window-id $window_id --resource-type $resource_type --targets $targets "$@"
}

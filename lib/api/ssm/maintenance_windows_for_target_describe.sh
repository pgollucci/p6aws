p6_aws_ssm_maintenance_windows_for_target_describe() {
    local targets="$1"
    local resource_type="$2"
    shift 2

    p6_run_read_cmd aws ssm describe-maintenance-windows-for-target --targets $targets --resource-type $resource_type "$@"
}

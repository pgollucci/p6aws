######################################################################
#<
#
# Function:
#	p6_aws_ssm_maintenance_window_target_update(window_id, window_target_id)
#
#  Args:
#	window_id - 
#	window_target_id - 
#
#>
######################################################################
p6_aws_ssm_maintenance_window_target_update() {
    local window_id="$1"
    local window_target_id="$2"
    shift 2

    p6_run_read_cmd aws ssm update-maintenance-window-target --window-id $window_id --window-target-id $window_target_id "$@"
}
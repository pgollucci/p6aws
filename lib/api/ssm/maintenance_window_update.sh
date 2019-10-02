######################################################################
#<
#
# Function:
#	p6_aws_ssm_maintenance_window_update(window_id)
#
#  Args:
#	window_id - 
#
#>
######################################################################
p6_aws_ssm_maintenance_window_update() {
    local window_id="$1"
    shift 1

    p6_run_write_cmd aws ssm update-maintenance-window --window-id $window_id "$@"
}
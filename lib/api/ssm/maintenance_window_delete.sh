######################################################################
#<
#
# Function:
#	p6_aws_ssm_maintenance_window_delete(window_id)
#
#  Args:
#	window_id - 
#
#>
######################################################################
p6_aws_ssm_maintenance_window_delete() {
    local window_id="$1"
    shift 1

    p6_run_write_cmd aws ssm delete-maintenance-window --window-id $window_id "$@"
}
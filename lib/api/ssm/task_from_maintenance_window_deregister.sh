######################################################################
#<
#
# Function:
#	p6_aws_ssm_task_from_maintenance_window_deregister(window_id, window_task_id)
#
#  Args:
#	window_id - 
#	window_task_id - 
#
#>
######################################################################
p6_aws_ssm_task_from_maintenance_window_deregister() {
    local window_id="$1"
    local window_task_id="$2"
    shift 2

    p6_run_write_cmd aws ssm deregister-task-from-maintenance-window --window-id $window_id --window-task-id $window_task_id "$@"
}
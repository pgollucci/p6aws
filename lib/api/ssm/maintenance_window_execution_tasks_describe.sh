######################################################################
#<
#
# Function:
#	p6_aws_ssm_maintenance_window_execution_tasks_describe(window_execution_id)
#
#  Args:
#	window_execution_id - 
#
#>
######################################################################
p6_aws_ssm_maintenance_window_execution_tasks_describe() {
    local window_execution_id="$1"
    shift 1

    p6_run_read_cmd aws ssm describe-maintenance-window-execution-tasks --window-execution-id $window_execution_id "$@"
}
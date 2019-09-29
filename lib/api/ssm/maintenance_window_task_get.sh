######################################################################
#<
#
# Function:
#      = p6_aws_ssm_maintenance_window_task_get(window_id, window_task_id)
#
# Arg(s):
#    window_id - 
#    window_task_id - 
#
#
#>
######################################################################
p6_aws_ssm_maintenance_window_task_get() {
    local window_id="$1"
    local window_task_id="$2"
    shift 2

    p6_run_read_cmd aws ssm get-maintenance-window-task --window-id $window_id --window-task-id $window_task_id "$@"
}
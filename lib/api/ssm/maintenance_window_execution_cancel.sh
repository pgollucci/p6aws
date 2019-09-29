######################################################################
#<
#
# Function:
#      = p6_aws_ssm_maintenance_window_execution_cancel(window_execution_id)
#
# Arg(s):
#    window_execution_id - 
#
#
#>
######################################################################
p6_aws_ssm_maintenance_window_execution_cancel() {
    local window_execution_id="$1"
    shift 1

    p6_run_write_cmd aws ssm cancel-maintenance-window-execution --window-execution-id $window_execution_id "$@"
}
######################################################################
#<
#
# Function:
#      = p6_aws_ssm_replace(window_id, window_target_id, window_id, window_task_id, window_id, baseline_id)
#
# Arg(s):
#    window_id - 
#    window_target_id - 
#    window_id - 
#    window_task_id - 
#    window_id - 
#    baseline_id - 
#
#
#>
######################################################################
p6_aws_ssm_replace() {
        local window_id="$1"
        local window_task_id="$2"
        shift 2

    cond_log_and_run aws ssm update-maintenance-window-task --window-id $window_id --window-task-id $window_task_id --replace "$@"
}

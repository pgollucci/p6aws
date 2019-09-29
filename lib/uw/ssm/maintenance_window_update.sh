######################################################################
#<
#
# Function:
#      = p6_aws_ssm_unassociated_targets(window_id)
#
# Arg(s):
#    window_id - 
#
#
#>
######################################################################
p6_aws_ssm_unassociated_targets() {
        local window_id="$1"
        shift 1

    cond_log_and_run aws ssm update-maintenance-window --window-id $window_id --allow-unassociated-targets "$@"
}

######################################################################
#<
#
# Function:
#      = p6_aws_ssm_enabled(window_id)
#
# Arg(s):
#    window_id - 
#
#
#>
######################################################################
p6_aws_ssm_enabled() {
        local window_id="$1"
        shift 1

    cond_log_and_run aws ssm update-maintenance-window --window-id $window_id --enabled "$@"
}

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
        shift 1

    cond_log_and_run aws ssm update-maintenance-window --window-id $window_id --replace "$@"
}

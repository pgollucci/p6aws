######################################################################
#<
#
# Function:
#      = p6_aws_ssm_target_from_maintenance_window_deregister(window_id, window_target_id)
#
# Arg(s):
#    window_id - 
#    window_target_id - 
#
#
#>
######################################################################
p6_aws_ssm_target_from_maintenance_window_deregister() {
    local window_id="$1"
    local window_target_id="$2"
    shift 2

    p6_run_read_cmd aws ssm deregister-target-from-maintenance-window --window-id $window_id --window-target-id $window_target_id "$@"
}
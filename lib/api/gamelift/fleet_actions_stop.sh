######################################################################
#<
#
# Function:
#	p6_aws_gamelift_fleet_actions_stop(fleet_id, actions)
#
#  Args:
#	fleet_id - 
#	actions - 
#
#>
######################################################################
p6_aws_gamelift_fleet_actions_stop() {
    local fleet_id="$1"
    local actions="$2"
    shift 2

    p6_run_write_cmd aws gamelift stop-fleet-actions --fleet-id $fleet_id --actions $actions "$@"
}
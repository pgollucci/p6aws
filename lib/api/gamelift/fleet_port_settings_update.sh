######################################################################
#<
#
# Function:
#	p6_aws_gamelift_fleet_port_settings_update(fleet_id)
#
#  Args:
#	fleet_id - 
#
#>
######################################################################
p6_aws_gamelift_fleet_port_settings_update() {
    local fleet_id="$1"
    shift 1

    p6_run_write_cmd aws gamelift update-fleet-port-settings --fleet-id $fleet_id "$@"
}
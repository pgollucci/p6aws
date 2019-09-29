######################################################################
#<
#
# Function:
#      = p6_aws_gamelift_fleet_port_settings_describe(fleet_id)
#
# Arg(s):
#    fleet_id - 
#
#
#>
######################################################################
p6_aws_gamelift_fleet_port_settings_describe() {
    local fleet_id="$1"
    shift 1

    p6_run_read_cmd aws gamelift describe-fleet-port-settings --fleet-id $fleet_id "$@"
}
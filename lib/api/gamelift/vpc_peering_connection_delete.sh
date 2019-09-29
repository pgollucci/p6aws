######################################################################
#<
#
# Function:
#      = p6_aws_gamelift_vpc_peering_connection_delete(fleet_id, vpc_peering_connection_id)
#
# Arg(s):
#    fleet_id - 
#    vpc_peering_connection_id - 
#
#
#>
######################################################################
p6_aws_gamelift_vpc_peering_connection_delete() {
    local fleet_id="$1"
    local vpc_peering_connection_id="$2"
    shift 2

    p6_run_write_cmd aws gamelift delete-vpc-peering-connection --fleet-id $fleet_id --vpc-peering-connection-id $vpc_peering_connection_id "$@"
}
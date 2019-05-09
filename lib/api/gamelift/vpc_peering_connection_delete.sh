p6_aws_gamelift_vpc_peering_connection_delete() {
    local fleet_id="$1"
    local vpc_peering_connection_id="$2"
    shift 2

    p6_log_or_run aws gamelift delete-vpc-peering-connection --fleet-id $fleet_id --vpc-peering-connection-id $vpc_peering_connection_id "$@"
}

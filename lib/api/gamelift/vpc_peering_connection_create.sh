p6_aws_gamelift_vpc_peering_connection_create() {
    local fleet_id="$1"
    local peer_vpc_aws_account_id="$2"
    local peer_vpc_id="$3"
    shift 3

    p6_log_or_run aws gamelift create-vpc-peering-connection --fleet-id $fleet_id --peer-vpc-aws-account-id $peer_vpc_aws_account_id --peer-vpc-id $peer_vpc_id "$@"
}

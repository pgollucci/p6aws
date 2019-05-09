p6_aws_ec2_security_groups_to_client_vpn_target_network_apply() {
    local client_vpn_endpoint_id="$1"
    local vpc_id="$2"
    local security_group_ids="$3"
    shift 3

    p6_run_read_cmd aws ec2 apply-security-groups-to-client-vpn-target-network --client-vpn-endpoint-id $client_vpn_endpoint_id --vpc-id $vpc_id --security-group-ids $security_group_ids "$@"
}

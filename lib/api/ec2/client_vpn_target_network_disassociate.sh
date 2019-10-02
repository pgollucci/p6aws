######################################################################
#<
#
# Function:
#	p6_aws_ec2_client_vpn_target_network_disassociate(client_vpn_endpoint_id, association_id)
#
#  Args:
#	client_vpn_endpoint_id - 
#	association_id - 
#
#>
######################################################################
p6_aws_ec2_client_vpn_target_network_disassociate() {
    local client_vpn_endpoint_id="$1"
    local association_id="$2"
    shift 2

    p6_run_read_cmd aws ec2 disassociate-client-vpn-target-network --client-vpn-endpoint-id $client_vpn_endpoint_id --association-id $association_id "$@"
}
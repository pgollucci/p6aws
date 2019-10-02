######################################################################
#<
#
# Function:
#	p6_aws_ec2_client_vpn_endpoint_delete(client_vpn_endpoint_id)
#
#  Args:
#	client_vpn_endpoint_id - 
#
#>
######################################################################
p6_aws_ec2_client_vpn_endpoint_delete() {
    local client_vpn_endpoint_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 delete-client-vpn-endpoint --client-vpn-endpoint-id $client_vpn_endpoint_id "$@"
}
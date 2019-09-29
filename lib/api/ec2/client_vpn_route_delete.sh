######################################################################
#<
#
# Function:
#      = p6_aws_ec2_client_vpn_route_delete(client_vpn_endpoint_id, destination_cidr_block)
#
# Arg(s):
#    client_vpn_endpoint_id - 
#    destination_cidr_block - 
#
#
#>
######################################################################
p6_aws_ec2_client_vpn_route_delete() {
    local client_vpn_endpoint_id="$1"
    local destination_cidr_block="$2"
    shift 2

    p6_run_write_cmd aws ec2 delete-client-vpn-route --client-vpn-endpoint-id $client_vpn_endpoint_id --destination-cidr-block $destination_cidr_block "$@"
}
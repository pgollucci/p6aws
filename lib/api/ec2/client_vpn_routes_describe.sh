######################################################################
#<
#
# Function:
#      = p6_aws_ec2_client_vpn_routes_describe(client_vpn_endpoint_id)
#
# Arg(s):
#    client_vpn_endpoint_id - 
#
#
#>
######################################################################
p6_aws_ec2_client_vpn_routes_describe() {
    local client_vpn_endpoint_id="$1"
    shift 1

    p6_run_read_cmd aws ec2 describe-client-vpn-routes --client-vpn-endpoint-id $client_vpn_endpoint_id "$@"
}
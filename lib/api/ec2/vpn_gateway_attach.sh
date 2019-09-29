######################################################################
#<
#
# Function:
#      = p6_aws_ec2_vpn_gateway_attach(vpc_id, vpn_gateway_id)
#
# Arg(s):
#    vpc_id - 
#    vpn_gateway_id - 
#
#
#>
######################################################################
p6_aws_ec2_vpn_gateway_attach() {
    local vpc_id="$1"
    local vpn_gateway_id="$2"
    shift 2

    p6_run_write_cmd aws ec2 attach-vpn-gateway --vpc-id $vpc_id --vpn-gateway-id $vpn_gateway_id "$@"
}
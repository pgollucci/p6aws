######################################################################
#<
#
# Function:
#	p6_aws_ec2_client_vpn_endpoints_describe()
#
#>
######################################################################
p6_aws_ec2_client_vpn_endpoints_describe() {

    p6_run_read_cmd aws ec2 describe-client-vpn-endpoints "$@"
}
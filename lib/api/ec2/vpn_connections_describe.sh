######################################################################
#<
#
# Function:
#      = p6_aws_ec2_vpn_connections_describe()
#
#
#
#>
######################################################################
p6_aws_ec2_vpn_connections_describe() {

    p6_run_read_cmd aws ec2 describe-vpn-connections "$@"
}
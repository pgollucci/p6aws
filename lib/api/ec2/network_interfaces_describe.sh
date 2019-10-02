######################################################################
#<
#
# Function:
#	p6_aws_ec2_network_interfaces_describe()
#
#>
######################################################################
p6_aws_ec2_network_interfaces_describe() {

    p6_run_read_cmd aws ec2 describe-network-interfaces "$@"
}
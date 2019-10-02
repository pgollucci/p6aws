######################################################################
#<
#
# Function:
#	p6_aws_ec2_public_ipv4_pools_describe()
#
#>
######################################################################
p6_aws_ec2_public_ipv4_pools_describe() {

    p6_run_read_cmd aws ec2 describe-public-ipv4-pools "$@"
}
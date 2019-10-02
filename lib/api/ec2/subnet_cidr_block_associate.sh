######################################################################
#<
#
# Function:
#	p6_aws_ec2_subnet_cidr_block_associate(ipv6_cidr_block, subnet_id)
#
#  Args:
#	ipv6_cidr_block - 
#	subnet_id - 
#
#>
######################################################################
p6_aws_ec2_subnet_cidr_block_associate() {
    local ipv6_cidr_block="$1"
    local subnet_id="$2"
    shift 2

    p6_run_write_cmd aws ec2 associate-subnet-cidr-block --ipv6-cidr-block $ipv6_cidr_block --subnet-id $subnet_id "$@"
}
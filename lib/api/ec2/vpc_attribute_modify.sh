######################################################################
#<
#
# Function:
#	p6_aws_ec2_vpc_attribute_modify(vpc_id)
#
#  Args:
#	vpc_id - 
#
#>
######################################################################
p6_aws_ec2_vpc_attribute_modify() {
    local vpc_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 modify-vpc-attribute --vpc-id $vpc_id "$@"
}
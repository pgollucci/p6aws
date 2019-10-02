######################################################################
#<
#
# Function:
#	p6_aws_ec2_vpc_endpoint_modify(vpc_endpoint_id)
#
#  Args:
#	vpc_endpoint_id - 
#
#>
######################################################################
p6_aws_ec2_vpc_endpoint_modify() {
    local vpc_endpoint_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 modify-vpc-endpoint --vpc-endpoint-id $vpc_endpoint_id "$@"
}
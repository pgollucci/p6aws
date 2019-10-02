######################################################################
#<
#
# Function:
#	p6_aws_ec2_network_acl_create(vpc_id)
#
#  Args:
#	vpc_id - 
#
#>
######################################################################
p6_aws_ec2_network_acl_create() {
    local vpc_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 create-network-acl --vpc-id $vpc_id "$@"
}
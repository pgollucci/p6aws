######################################################################
#<
#
# Function:
#	p6_aws_ec2_vpc_peering_connection_reject(vpc_peering_connection_id)
#
#  Args:
#	vpc_peering_connection_id - 
#
#>
######################################################################
p6_aws_ec2_vpc_peering_connection_reject() {
    local vpc_peering_connection_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 reject-vpc-peering-connection --vpc-peering-connection-id $vpc_peering_connection_id "$@"
}
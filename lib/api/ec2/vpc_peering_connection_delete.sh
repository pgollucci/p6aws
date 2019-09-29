######################################################################
#<
#
# Function:
#      = p6_aws_ec2_vpc_peering_connection_delete(vpc_peering_connection_id)
#
# Arg(s):
#    vpc_peering_connection_id - 
#
#
#>
######################################################################
p6_aws_ec2_vpc_peering_connection_delete() {
    local vpc_peering_connection_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 delete-vpc-peering-connection --vpc-peering-connection-id $vpc_peering_connection_id "$@"
}
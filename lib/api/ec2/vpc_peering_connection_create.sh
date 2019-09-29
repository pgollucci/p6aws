######################################################################
#<
#
# Function:
#      = p6_aws_ec2_vpc_peering_connection_create()
#
#
#
#>
######################################################################
p6_aws_ec2_vpc_peering_connection_create() {

    p6_run_write_cmd aws ec2 create-vpc-peering-connection "$@"
}
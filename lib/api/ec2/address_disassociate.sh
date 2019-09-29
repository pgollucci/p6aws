######################################################################
#<
#
# Function:
#      = p6_aws_ec2_address_disassociate()
#
#
#
#>
######################################################################
p6_aws_ec2_address_disassociate() {

    p6_run_write_cmd aws ec2 disassociate-address "$@"
}
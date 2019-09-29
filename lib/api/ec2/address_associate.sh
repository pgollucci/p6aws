######################################################################
#<
#
# Function:
#      = p6_aws_ec2_address_associate()
#
#
#
#>
######################################################################
p6_aws_ec2_address_associate() {

    p6_run_write_cmd aws ec2 associate-address "$@"
}
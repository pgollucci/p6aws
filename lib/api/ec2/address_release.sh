######################################################################
#<
#
# Function:
#      = p6_aws_ec2_address_release()
#
#
#
#>
######################################################################
p6_aws_ec2_address_release() {

    p6_run_write_cmd aws ec2 release-address "$@"
}
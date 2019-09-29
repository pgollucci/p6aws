######################################################################
#<
#
# Function:
#      = p6_aws_ec2_address_allocate()
#
#
#
#>
######################################################################
p6_aws_ec2_address_allocate() {

    p6_run_write_cmd aws ec2 allocate-address "$@"
}
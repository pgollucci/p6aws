######################################################################
#<
#
# Function:
#      = p6_aws_ec2_internet_gateway_create()
#
#
#
#>
######################################################################
p6_aws_ec2_internet_gateway_create() {

    p6_run_write_cmd aws ec2 create-internet-gateway "$@"
}
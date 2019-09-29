######################################################################
#<
#
# Function:
#      = p6_aws_lightsail_vpc_peer()
#
#
#
#>
######################################################################
p6_aws_lightsail_vpc_peer() {

    p6_run_write_cmd aws lightsail peer-vpc "$@"
}
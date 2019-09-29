######################################################################
#<
#
# Function:
#      = p6_aws_lightsail_vpc_peered_is()
#
#
#
#>
######################################################################
p6_aws_lightsail_vpc_peered_is() {

    p6_run_write_cmd aws lightsail is-vpc-peered "$@"
}
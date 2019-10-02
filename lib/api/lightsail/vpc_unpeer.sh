######################################################################
#<
#
# Function:
#	p6_aws_lightsail_vpc_unpeer()
#
#>
######################################################################
p6_aws_lightsail_vpc_unpeer() {

    p6_run_write_cmd aws lightsail unpeer-vpc "$@"
}
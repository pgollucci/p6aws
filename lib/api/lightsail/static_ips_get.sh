######################################################################
#<
#
# Function:
#	p6_aws_lightsail_static_ips_get()
#
#>
######################################################################
p6_aws_lightsail_static_ips_get() {

    p6_run_read_cmd aws lightsail get-static-ips "$@"
}
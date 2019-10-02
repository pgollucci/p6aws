######################################################################
#<
#
# Function:
#	p6_aws_lightsail_instances_get()
#
#>
######################################################################
p6_aws_lightsail_instances_get() {

    p6_run_read_cmd aws lightsail get-instances "$@"
}
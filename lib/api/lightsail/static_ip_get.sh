######################################################################
#<
#
# Function:
#	p6_aws_lightsail_static_ip_get(static_ip_name)
#
#  Args:
#	static_ip_name - 
#
#>
######################################################################
p6_aws_lightsail_static_ip_get() {
    local static_ip_name="$1"
    shift 1

    p6_run_read_cmd aws lightsail get-static-ip --static-ip-name $static_ip_name "$@"
}
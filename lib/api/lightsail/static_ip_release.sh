######################################################################
#<
#
# Function:
#      = p6_aws_lightsail_static_ip_release(static_ip_name)
#
# Arg(s):
#    static_ip_name - 
#
#
#>
######################################################################
p6_aws_lightsail_static_ip_release() {
    local static_ip_name="$1"
    shift 1

    p6_run_write_cmd aws lightsail release-static-ip --static-ip-name $static_ip_name "$@"
}
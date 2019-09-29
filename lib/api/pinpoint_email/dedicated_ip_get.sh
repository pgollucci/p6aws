######################################################################
#<
#
# Function:
#      = p6_aws_pinpoint_email_dedicated_ip_get(ip)
#
# Arg(s):
#    ip - 
#
#
#>
######################################################################
p6_aws_pinpoint_email_dedicated_ip_get() {
    local ip="$1"
    shift 1

    p6_run_read_cmd aws pinpoint-email get-dedicated-ip --ip $ip "$@"
}
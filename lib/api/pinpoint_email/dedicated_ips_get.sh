######################################################################
#<
#
# Function:
#      = p6_aws_pinpoint_email_dedicated_ips_get()
#
#
#
#>
######################################################################
p6_aws_pinpoint_email_dedicated_ips_get() {

    p6_run_read_cmd aws pinpoint-email get-dedicated-ips "$@"
}
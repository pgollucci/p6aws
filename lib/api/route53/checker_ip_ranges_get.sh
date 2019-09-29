######################################################################
#<
#
# Function:
#      = p6_aws_route53_checker_ip_ranges_get()
#
#
#
#>
######################################################################
p6_aws_route53_checker_ip_ranges_get() {

    p6_run_read_cmd aws route53 get-checker-ip-ranges "$@"
}
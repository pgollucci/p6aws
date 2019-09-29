######################################################################
#<
#
# Function:
#      = p6_aws_route53domains_billing_view()
#
#
#
#>
######################################################################
p6_aws_route53domains_billing_view() {

    p6_run_write_cmd aws route53domains view-billing "$@"
}
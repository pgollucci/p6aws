######################################################################
#<
#
# Function:
#      = p6_aws_route53domains_contact_reachability_status_get()
#
#
#
#>
######################################################################
p6_aws_route53domains_contact_reachability_status_get() {

    p6_run_read_cmd aws route53domains get-contact-reachability-status "$@"
}
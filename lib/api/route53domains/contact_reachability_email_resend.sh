######################################################################
#<
#
# Function:
#	p6_aws_route53domains_contact_reachability_email_resend()
#
#>
######################################################################
p6_aws_route53domains_contact_reachability_email_resend() {

    p6_run_write_cmd aws route53domains resend-contact-reachability-email "$@"
}
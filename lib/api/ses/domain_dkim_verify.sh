######################################################################
#<
#
# Function:
#	p6_aws_ses_domain_dkim_verify(domain)
#
#  Args:
#	domain - 
#
#>
######################################################################
p6_aws_ses_domain_dkim_verify() {
    local domain="$1"
    shift 1

    p6_run_write_cmd aws ses verify-domain-dkim --domain $domain "$@"
}
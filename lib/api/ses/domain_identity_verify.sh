######################################################################
#<
#
# Function:
#      = p6_aws_ses_domain_identity_verify(domain)
#
# Arg(s):
#    domain - 
#
#
#>
######################################################################
p6_aws_ses_domain_identity_verify() {
    local domain="$1"
    shift 1

    p6_run_write_cmd aws ses verify-domain-identity --domain $domain "$@"
}
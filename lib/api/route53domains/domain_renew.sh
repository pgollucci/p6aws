######################################################################
#<
#
# Function:
#      = p6_aws_route53domains_domain_renew(domain_name, current_expiry_year)
#
# Arg(s):
#    domain_name - 
#    current_expiry_year - 
#
#
#>
######################################################################
p6_aws_route53domains_domain_renew() {
    local domain_name="$1"
    local current_expiry_year="$2"
    shift 2

    p6_run_write_cmd aws route53domains renew-domain --domain-name $domain_name --current-expiry-year $current_expiry_year "$@"
}
######################################################################
#<
#
# Function:
#      = p6_aws_route53domains_domain_auto_renew_disable(domain_name)
#
# Arg(s):
#    domain_name - 
#
#
#>
######################################################################
p6_aws_route53domains_domain_auto_renew_disable() {
    local domain_name="$1"
    shift 1

    p6_run_write_cmd aws route53domains disable-domain-auto-renew --domain-name $domain_name "$@"
}
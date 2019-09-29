######################################################################
#<
#
# Function:
#      = p6_aws_route53domains_domain_detail_get(domain_name)
#
# Arg(s):
#    domain_name - 
#
#
#>
######################################################################
p6_aws_route53domains_domain_detail_get() {
    local domain_name="$1"
    shift 1

    p6_run_read_cmd aws route53domains get-domain-detail --domain-name $domain_name "$@"
}
######################################################################
#<
#
# Function:
#	p6_aws_route53domains_domain_nameservers_update(domain_name, nameservers)
#
#  Args:
#	domain_name - 
#	nameservers - 
#
#>
######################################################################
p6_aws_route53domains_domain_nameservers_update() {
    local domain_name="$1"
    local nameservers="$2"
    shift 2

    p6_run_write_cmd aws route53domains update-domain-nameservers --domain-name $domain_name --nameservers $nameservers "$@"
}
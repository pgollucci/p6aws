######################################################################
#<
#
# Function:
#	p6_aws_route53domains_domain_transfer(domain_name, duration_in_years, admin_contact, registrant_contact, tech_contact)
#
#  Args:
#	domain_name - 
#	duration_in_years - 
#	admin_contact - 
#	registrant_contact - 
#	tech_contact - 
#
#>
######################################################################
p6_aws_route53domains_domain_transfer() {
    local domain_name="$1"
    local duration_in_years="$2"
    local admin_contact="$3"
    local registrant_contact="$4"
    local tech_contact="$5"
    shift 5

    p6_run_write_cmd aws route53domains transfer-domain --domain-name $domain_name --duration-in-years $duration_in_years --admin-contact $admin_contact --registrant-contact $registrant_contact --tech-contact $tech_contact "$@"
}
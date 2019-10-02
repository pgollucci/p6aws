######################################################################
#<
#
# Function:
#	p6_aws_lightsail_domain_entry_delete(domain_name, domain_entry)
#
#  Args:
#	domain_name - 
#	domain_entry - 
#
#>
######################################################################
p6_aws_lightsail_domain_entry_delete() {
    local domain_name="$1"
    local domain_entry="$2"
    shift 2

    p6_run_write_cmd aws lightsail delete-domain-entry --domain-name $domain_name --domain-entry $domain_entry "$@"
}
######################################################################
#<
#
# Function:
#	p6_aws_cloudsearch_service_access_policies_update(domain_name, access_policies)
#
#  Args:
#	domain_name - 
#	access_policies - 
#
#>
######################################################################
p6_aws_cloudsearch_service_access_policies_update() {
    local domain_name="$1"
    local access_policies="$2"
    shift 2

    p6_run_write_cmd aws cloudsearch update-service-access-policies --domain-name $domain_name --access-policies $access_policies "$@"
}
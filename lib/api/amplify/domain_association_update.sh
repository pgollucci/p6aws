######################################################################
#<
#
# Function:
#	p6_aws_amplify_domain_association_update(app_id, domain_name, sub_domain_settings)
#
#  Args:
#	app_id - 
#	domain_name - 
#	sub_domain_settings - 
#
#>
######################################################################
p6_aws_amplify_domain_association_update() {
    local app_id="$1"
    local domain_name="$2"
    local sub_domain_settings="$3"
    shift 3

    p6_run_write_cmd aws amplify update-domain-association --app-id $app_id --domain-name $domain_name --sub-domain-settings $sub_domain_settings "$@"
}
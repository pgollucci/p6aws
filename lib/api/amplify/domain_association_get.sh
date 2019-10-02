######################################################################
#<
#
# Function:
#	p6_aws_amplify_domain_association_get(app_id, domain_name)
#
#  Args:
#	app_id - 
#	domain_name - 
#
#>
######################################################################
p6_aws_amplify_domain_association_get() {
    local app_id="$1"
    local domain_name="$2"
    shift 2

    p6_run_read_cmd aws amplify get-domain-association --app-id $app_id --domain-name $domain_name "$@"
}
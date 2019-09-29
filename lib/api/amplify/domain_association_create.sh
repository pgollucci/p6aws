######################################################################
#<
#
# Function:
#      = p6_aws_amplify_domain_association_create(app_id, domain_name, sub_domain_settings)
#
# Arg(s):
#    app_id - 
#    domain_name - 
#    sub_domain_settings - 
#
#
#>
######################################################################
p6_aws_amplify_domain_association_create() {
    local app_id="$1"
    local domain_name="$2"
    local sub_domain_settings="$3"
    shift 3

    p6_run_write_cmd aws amplify create-domain-association --app-id $app_id --domain-name $domain_name --sub-domain-settings $sub_domain_settings "$@"
}
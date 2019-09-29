######################################################################
#<
#
# Function:
#      = p6_aws_amplify_auto_sub_domain(app_id, domain_name, sub_domain_settings)
#
# Arg(s):
#    app_id - 
#    domain_name - 
#    sub_domain_settings - 
#
#
#>
######################################################################
p6_aws_amplify_auto_sub_domain() {
        local app_id="$1"
        local domain_name="$2"
        local sub_domain_settings="$3"
        shift 3

    cond_log_and_run aws amplify update-domain-association --app-id $app_id --domain-name $domain_name --sub-domain-settings $sub_domain_settings --enable-auto-sub-domain "$@"
}

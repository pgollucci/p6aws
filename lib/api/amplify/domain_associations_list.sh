######################################################################
#<
#
# Function:
#      = p6_aws_amplify_domain_associations_list(app_id)
#
# Arg(s):
#    app_id - 
#
#
#>
######################################################################
p6_aws_amplify_domain_associations_list() {
    local app_id="$1"
    shift 1

    p6_run_read_cmd aws amplify list-domain-associations --app-id $app_id "$@"
}
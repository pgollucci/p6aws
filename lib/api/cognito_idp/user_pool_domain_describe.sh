######################################################################
#<
#
# Function:
#      = p6_aws_cognito_idp_user_pool_domain_describe(domain)
#
# Arg(s):
#    domain - 
#
#
#>
######################################################################
p6_aws_cognito_idp_user_pool_domain_describe() {
    local domain="$1"
    shift 1

    p6_run_read_cmd aws cognito-idp describe-user-pool-domain --domain $domain "$@"
}
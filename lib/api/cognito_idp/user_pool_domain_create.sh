######################################################################
#<
#
# Function:
#	p6_aws_cognito_idp_user_pool_domain_create(domain, user_pool_id)
#
#  Args:
#	domain - 
#	user_pool_id - 
#
#>
######################################################################
p6_aws_cognito_idp_user_pool_domain_create() {
    local domain="$1"
    local user_pool_id="$2"
    shift 2

    p6_run_write_cmd aws cognito-idp create-user-pool-domain --domain $domain --user-pool-id $user_pool_id "$@"
}
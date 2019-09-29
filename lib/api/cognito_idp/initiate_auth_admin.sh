######################################################################
#<
#
# Function:
#      = p6_aws_cognito_idp_initiate_auth_admin(user_pool_id, client_id, auth_flow)
#
# Arg(s):
#    user_pool_id - 
#    client_id - 
#    auth_flow - 
#
#
#>
######################################################################
p6_aws_cognito_idp_initiate_auth_admin() {
    local user_pool_id="$1"
    local client_id="$2"
    local auth_flow="$3"
    shift 3

    p6_run_write_cmd aws cognito-idp admin-initiate-auth --user-pool-id $user_pool_id --client-id $client_id --auth-flow $auth_flow "$@"
}
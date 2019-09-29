######################################################################
#<
#
# Function:
#      = p6_aws_cognito_idp_user_pool_client_delete(user_pool_id, client_id)
#
# Arg(s):
#    user_pool_id - 
#    client_id - 
#
#
#>
######################################################################
p6_aws_cognito_idp_user_pool_client_delete() {
    local user_pool_id="$1"
    local client_id="$2"
    shift 2

    p6_run_write_cmd aws cognito-idp delete-user-pool-client --user-pool-id $user_pool_id --client-id $client_id "$@"
}
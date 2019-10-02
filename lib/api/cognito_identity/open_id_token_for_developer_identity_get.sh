######################################################################
#<
#
# Function:
#	p6_aws_cognito_identity_open_id_token_for_developer_identity_get(identity_pool_id, logins)
#
#  Args:
#	identity_pool_id - 
#	logins - 
#
#>
######################################################################
p6_aws_cognito_identity_open_id_token_for_developer_identity_get() {
    local identity_pool_id="$1"
    local logins="$2"
    shift 2

    p6_run_read_cmd aws cognito-identity get-open-id-token-for-developer-identity --identity-pool-id $identity_pool_id --logins $logins "$@"
}
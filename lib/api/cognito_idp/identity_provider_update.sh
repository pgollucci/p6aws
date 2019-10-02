######################################################################
#<
#
# Function:
#	p6_aws_cognito_idp_identity_provider_update(user_pool_id, provider_name)
#
#  Args:
#	user_pool_id - 
#	provider_name - 
#
#>
######################################################################
p6_aws_cognito_idp_identity_provider_update() {
    local user_pool_id="$1"
    local provider_name="$2"
    shift 2

    p6_run_write_cmd aws cognito-idp update-identity-provider --user-pool-id $user_pool_id --provider-name $provider_name "$@"
}
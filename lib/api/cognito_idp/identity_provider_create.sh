######################################################################
#<
#
# Function:
#	p6_aws_cognito_idp_identity_provider_create(user_pool_id, provider_name, provider_type, provider_details)
#
#  Args:
#	user_pool_id - 
#	provider_name - 
#	provider_type - 
#	provider_details - 
#
#>
######################################################################
p6_aws_cognito_idp_identity_provider_create() {
    local user_pool_id="$1"
    local provider_name="$2"
    local provider_type="$3"
    local provider_details="$4"
    shift 4

    p6_run_write_cmd aws cognito-idp create-identity-provider --user-pool-id $user_pool_id --provider-name $provider_name --provider-type $provider_type --provider-details $provider_details "$@"
}
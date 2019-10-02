######################################################################
#<
#
# Function:
#	p6_aws_cognito_identity_identity_pool_update(identity_pool_id, identity_pool_name, allow_unauthenticated_identities)
#
#  Args:
#	identity_pool_id - 
#	identity_pool_name - 
#	allow_unauthenticated_identities - 
#
#>
######################################################################
p6_aws_cognito_identity_identity_pool_update() {
    local identity_pool_id="$1"
    local identity_pool_name="$2"
    local allow_unauthenticated_identities="$3"
    shift 3

    p6_run_write_cmd aws cognito-identity update-identity-pool --identity-pool-id $identity_pool_id --identity-pool-name $identity_pool_name --allow-unauthenticated-identities $allow_unauthenticated_identities "$@"
}
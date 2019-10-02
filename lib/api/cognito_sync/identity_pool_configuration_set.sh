######################################################################
#<
#
# Function:
#	p6_aws_cognito_sync_identity_pool_configuration_set(identity_pool_id)
#
#  Args:
#	identity_pool_id - 
#
#>
######################################################################
p6_aws_cognito_sync_identity_pool_configuration_set() {
    local identity_pool_id="$1"
    shift 1

    p6_run_write_cmd aws cognito-sync set-identity-pool-configuration --identity-pool-id $identity_pool_id "$@"
}
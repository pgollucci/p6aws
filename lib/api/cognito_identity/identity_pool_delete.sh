######################################################################
#<
#
# Function:
#      = p6_aws_cognito_identity_identity_pool_delete(identity_pool_id)
#
# Arg(s):
#    identity_pool_id - 
#
#
#>
######################################################################
p6_aws_cognito_identity_identity_pool_delete() {
    local identity_pool_id="$1"
    shift 1

    p6_run_write_cmd aws cognito-identity delete-identity-pool --identity-pool-id $identity_pool_id "$@"
}
######################################################################
#<
#
# Function:
#      = p6_aws_cognito_identity_identity_pool_roles_set(identity_pool_id, roles)
#
# Arg(s):
#    identity_pool_id - 
#    roles - 
#
#
#>
######################################################################
p6_aws_cognito_identity_identity_pool_roles_set() {
    local identity_pool_id="$1"
    local roles="$2"
    shift 2

    p6_run_write_cmd aws cognito-identity set-identity-pool-roles --identity-pool-id $identity_pool_id --roles $roles "$@"
}
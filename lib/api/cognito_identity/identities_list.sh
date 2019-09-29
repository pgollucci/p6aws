######################################################################
#<
#
# Function:
#      = p6_aws_cognito_identity_identities_list(identity_pool_id, max_results)
#
# Arg(s):
#    identity_pool_id - 
#    max_results - 
#
#
#>
######################################################################
p6_aws_cognito_identity_identities_list() {
    local identity_pool_id="$1"
    local max_results="$2"
    shift 2

    p6_run_read_cmd aws cognito-identity list-identities --identity-pool-id $identity_pool_id --max-results $max_results "$@"
}
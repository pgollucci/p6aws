######################################################################
#<
#
# Function:
#      = p6_aws_cognito_idp_signing_certificate_get(user_pool_id)
#
# Arg(s):
#    user_pool_id - 
#
#
#>
######################################################################
p6_aws_cognito_idp_signing_certificate_get() {
    local user_pool_id="$1"
    shift 1

    p6_run_read_cmd aws cognito-idp get-signing-certificate --user-pool-id $user_pool_id "$@"
}
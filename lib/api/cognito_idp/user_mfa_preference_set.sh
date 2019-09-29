######################################################################
#<
#
# Function:
#      = p6_aws_cognito_idp_user_mfa_preference_set(access_token)
#
# Arg(s):
#    access_token - 
#
#
#>
######################################################################
p6_aws_cognito_idp_user_mfa_preference_set() {
    local access_token="$1"
    shift 1

    p6_run_write_cmd aws cognito-idp set-user-mfa-preference --access-token $access_token "$@"
}
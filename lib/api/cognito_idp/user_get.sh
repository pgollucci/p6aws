######################################################################
#<
#
# Function:
#      = p6_aws_cognito_idp_user_get(access_token)
#
# Arg(s):
#    access_token - 
#
#
#>
######################################################################
p6_aws_cognito_idp_user_get() {
    local access_token="$1"
    shift 1

    p6_run_read_cmd aws cognito-idp get-user --access-token $access_token "$@"
}
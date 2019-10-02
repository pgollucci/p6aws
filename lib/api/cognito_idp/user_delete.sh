######################################################################
#<
#
# Function:
#	p6_aws_cognito_idp_user_delete(access_token)
#
#  Args:
#	access_token - 
#
#>
######################################################################
p6_aws_cognito_idp_user_delete() {
    local access_token="$1"
    shift 1

    p6_run_write_cmd aws cognito-idp delete-user --access-token $access_token "$@"
}
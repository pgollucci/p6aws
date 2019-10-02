######################################################################
#<
#
# Function:
#	p6_aws_cognito_idp_devices_list(access_token)
#
#  Args:
#	access_token - 
#
#>
######################################################################
p6_aws_cognito_idp_devices_list() {
    local access_token="$1"
    shift 1

    p6_run_read_cmd aws cognito-idp list-devices --access-token $access_token "$@"
}
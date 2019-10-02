######################################################################
#<
#
# Function:
#	p6_aws_cognito_idp_auth_initiate(auth_flow, client_id)
#
#  Args:
#	auth_flow - 
#	client_id - 
#
#>
######################################################################
p6_aws_cognito_idp_auth_initiate() {
    local auth_flow="$1"
    local client_id="$2"
    shift 2

    p6_run_write_cmd aws cognito-idp initiate-auth --auth-flow $auth_flow --client-id $client_id "$@"
}
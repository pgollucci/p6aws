######################################################################
#<
#
# Function:
#	p6_aws_cognito_idp_confirmation_code_resend(client_id, username)
#
#  Args:
#	client_id - 
#	username - 
#
#>
######################################################################
p6_aws_cognito_idp_confirmation_code_resend() {
    local client_id="$1"
    local username="$2"
    shift 2

    p6_run_write_cmd aws cognito-idp resend-confirmation-code --client-id $client_id --username $username "$@"
}
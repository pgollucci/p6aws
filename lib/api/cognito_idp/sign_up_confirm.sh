######################################################################
#<
#
# Function:
#	p6_aws_cognito_idp_sign_up_confirm(client_id, username, confirmation_code)
#
#  Args:
#	client_id - 
#	username - 
#	confirmation_code - 
#
#>
######################################################################
p6_aws_cognito_idp_sign_up_confirm() {
    local client_id="$1"
    local username="$2"
    local confirmation_code="$3"
    shift 3

    p6_run_write_cmd aws cognito-idp confirm-sign-up --client-id $client_id --username $username --confirmation-code $confirmation_code "$@"
}
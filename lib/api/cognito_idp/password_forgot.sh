######################################################################
#<
#
# Function:
#      = p6_aws_cognito_idp_password_forgot(client_id, username)
#
# Arg(s):
#    client_id - 
#    username - 
#
#
#>
######################################################################
p6_aws_cognito_idp_password_forgot() {
    local client_id="$1"
    local username="$2"
    shift 2

    p6_run_write_cmd aws cognito-idp forgot-password --client-id $client_id --username $username "$@"
}
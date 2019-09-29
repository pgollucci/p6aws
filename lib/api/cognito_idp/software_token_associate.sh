######################################################################
#<
#
# Function:
#      = p6_aws_cognito_idp_software_token_associate()
#
#
#
#>
######################################################################
p6_aws_cognito_idp_software_token_associate() {

    p6_run_write_cmd aws cognito-idp associate-software-token "$@"
}
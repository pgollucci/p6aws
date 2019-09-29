######################################################################
#<
#
# Function:
#      = p6_aws_cognito_identity_credentials_for_identity_get(identity_id)
#
# Arg(s):
#    identity_id - 
#
#
#>
######################################################################
p6_aws_cognito_identity_credentials_for_identity_get() {
    local identity_id="$1"
    shift 1

    p6_run_read_cmd aws cognito-identity get-credentials-for-identity --identity-id $identity_id "$@"
}
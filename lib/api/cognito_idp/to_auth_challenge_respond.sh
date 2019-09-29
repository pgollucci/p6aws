######################################################################
#<
#
# Function:
#      = p6_aws_cognito_idp_to_auth_challenge_respond(client_id, challenge_name)
#
# Arg(s):
#    client_id - 
#    challenge_name - 
#
#
#>
######################################################################
p6_aws_cognito_idp_to_auth_challenge_respond() {
    local client_id="$1"
    local challenge_name="$2"
    shift 2

    p6_run_write_cmd aws cognito-idp respond-to-auth-challenge --client-id $client_id --challenge-name $challenge_name "$@"
}
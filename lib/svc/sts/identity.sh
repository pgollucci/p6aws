# shellcheck shell=bash
######################################################################
#<
#
# Function: p6_aws_svc_sts_whoami()
#
#>
######################################################################
p6_aws_svc_sts_whoami() {

    p6_aws_cli_cmd sts get-caller-identity

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_svc_sts_identity_broker_custom_login_url(cred_file)
#
#  Args:
#	cred_file -
#
#>
######################################################################
p6_aws_svc_sts_identity_broker_custom_login_url() {
    local cred_file="$1"

    # endpoints
    local federation_endpoint="https://signin.aws.amazon.com/federation"
    local console_endpoint="https://console.aws.amazon.com/"

    # id, key, token in cred file
    local access_key_id
    local secret_access_key
    local session_token

    # Parse (depends on file having only 1 profile; which it does)
    access_key_id=$(awk '/access_key_id/ { print $3 }' <"$cred_file")
    secret_access_key=$(awk '/secret_access_key/ { print $3 }' <"$cred_file")
    session_token=$(awk '/session_token/ { print $3 }' <"$cred_file")

    # string
    local str
    str="{\"sessionId\":\"$access_key_id\",\"sessionKey\":\"$secret_access_key\",\"sessionToken\":\"$session_token\"}"

    # url encode str
    local session
    session=$(echo "$str" | jq -sRr @uri)

    # getSigninToken request
    local response
    response=$(curl -s "$federation_endpoint?Action=getSigninToken&SessionDuration=1800&Session=$session")

    # grab SigninToken
    local signin_token
    signin_token=$(echo "$response" | jq -r ".SigninToken")

    # login request
    local destination
    local issuer
    destination=$(echo "$console_endpoint" | jq -Rr @uri)
    issuer=$(echo "p6cli" | jq -rR @uri)

    local login_url
    login_url="$federation_endpoint?Action=login&Issuer=$issuer&Destination=$destination&SigninToken=$signin_token"

    echo "$login_url"
}

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
# Function: str login_url = p6_aws_svc_sts_identity_broker_custom_login_url(cred_file)
#
#  Args:
#	cred_file -
#
#  Returns:
#	str - login_url
#
#>
######################################################################
p6_aws_svc_sts_identity_broker_custom_login_url() {
    local cred_file="$1"

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
    session=$(p6_echo "$str" | jq -sRr @uri)

    # getSigninToken request
    local response
    response=$(curl -s "https://signin.aws.amazon.com/federation?Action=getSigninToken&SessionDuration=1800&Session=$session")

    # grab SigninToken
    local signin_token
    signin_token=$(p6_echo "$response" | jq -r ".SigninToken")

    # login request
    local destination
    local issuer
    destination=$(p6_echo "https://console.aws.amazon.com/" | jq -Rr @uri)
    issuer=$(p6_echo "p6cli" | jq -rR @uri)

    local login_url
    login_url="https://signin.aws.amazon.com/federation?Action=login&Issuer=$issuer&Destination=$destination&SigninToken=$signin_token"

    p6_return_str "$login_url"
}
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
# Function: obj role = p6_aws_svc_sts_assertion_decode(assertion64)
#
#  Args:
#	assertion64 -
#
#  Returns:
#	obj - role
#
#>
######################################################################
p6_aws_svc_sts_assertion_decode() {
    local assertion64="$1"

    local role_provider=$(p6_echo "$assertion64" | base64 -D | sed -e 's,.*>arn,arn,' -e 's,\<.*,,')
    p6_aws_sts__debug "assertion_decode(): [role_provider=$role_provider]"

    local role_arn=$(p6_echo "$role_provider" | cut -d , -f 1)
    local principal_arn=$(p6_echo "$role_provider" | cut -d , -f 2)
    p6_aws_sts__debug "assertion_decode(): [role_arn=$role_arn]"
    p6_aws_sts__debug "assertion_decode(): [principal_arn=$principal_arn]"

    local role=$(p6_obj_create "hash")
    local o1=$(p6_obj_item_set "$role" "role_arn" "$role_arn")
    local o2=$(p6_obj_item_set "$role" "principal_arn" "$principal_arn")

    p6_return_obj "$role"
}

######################################################################
#<
#
# Function: str assertion64 = p6_aws_svc_sts_login_saml(auth)
#
#  Args:
#	auth -
#
#  Returns:
#	str - assertion64
#
#>
######################################################################
p6_aws_svc_sts_login_saml() {
    local auth="$1"

    local idp="jc"

    local assertion64
    case $idp in
    jc) assertion64=$(p6_jc_saml_login "$auth") ;;
    esac

    p6_return_str "$assertion64"
}
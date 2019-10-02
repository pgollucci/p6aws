######################################################################
#<
#
# Function:
#	p6_aws_iot_invoke_authorizer_test(authorizer_name, token, token_signature)
#
#  Args:
#	authorizer_name - 
#	token - 
#	token_signature - 
#
#>
######################################################################
p6_aws_iot_invoke_authorizer_test() {
    local authorizer_name="$1"
    local token="$2"
    local token_signature="$3"
    shift 3

    p6_run_write_cmd aws iot test-invoke-authorizer --authorizer-name $authorizer_name --token $token --token-signature $token_signature "$@"
}
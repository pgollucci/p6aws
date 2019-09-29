######################################################################
#<
#
# Function:
#      = p6_aws_iot_authorizer_create(authorizer_name, authorizer_function_arn, token_key_name, token_signing_public_keys)
#
# Arg(s):
#    authorizer_name - 
#    authorizer_function_arn - 
#    token_key_name - 
#    token_signing_public_keys - 
#
#
#>
######################################################################
p6_aws_iot_authorizer_create() {
    local authorizer_name="$1"
    local authorizer_function_arn="$2"
    local token_key_name="$3"
    local token_signing_public_keys="$4"
    shift 4

    p6_run_write_cmd aws iot create-authorizer --authorizer-name $authorizer_name --authorizer-function-arn $authorizer_function_arn --token-key-name $token_key_name --token-signing-public-keys $token_signing_public_keys "$@"
}
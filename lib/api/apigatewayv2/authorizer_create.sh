######################################################################
#<
#
# Function:
#      = p6_aws_apigatewayv2_authorizer_create(api_id, authorizer_type, authorizer_uri, identity_source, name)
#
# Arg(s):
#    api_id - 
#    authorizer_type - 
#    authorizer_uri - 
#    identity_source - 
#    name - 
#
#
#>
######################################################################
p6_aws_apigatewayv2_authorizer_create() {
    local api_id="$1"
    local authorizer_type="$2"
    local authorizer_uri="$3"
    local identity_source="$4"
    local name="$5"
    shift 5

    p6_run_write_cmd aws apigatewayv2 create-authorizer --api-id $api_id --authorizer-type $authorizer_type --authorizer-uri $authorizer_uri --identity-source $identity_source --name $name "$@"
}
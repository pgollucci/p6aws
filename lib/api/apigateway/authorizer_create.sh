######################################################################
#<
#
# Function:
#      = p6_aws_apigateway_authorizer_create(rest_api_id, name, type)
#
# Arg(s):
#    rest_api_id - 
#    name - 
#    type - 
#
#
#>
######################################################################
p6_aws_apigateway_authorizer_create() {
    local rest_api_id="$1"
    local name="$2"
    local type="$3"
    shift 3

    p6_run_write_cmd aws apigateway create-authorizer --rest-api-id $rest_api_id --name $name --type $type "$@"
}
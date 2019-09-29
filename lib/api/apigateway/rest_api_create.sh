######################################################################
#<
#
# Function:
#      = p6_aws_apigateway_rest_api_create(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_apigateway_rest_api_create() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws apigateway create-rest-api --name $name "$@"
}
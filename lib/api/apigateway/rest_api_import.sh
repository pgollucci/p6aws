######################################################################
#<
#
# Function:
#      = p6_aws_apigateway_rest_api_import(body)
#
# Arg(s):
#    body - 
#
#
#>
######################################################################
p6_aws_apigateway_rest_api_import() {
    local body="$1"
    shift 1

    p6_run_write_cmd aws apigateway import-rest-api --body $body "$@"
}
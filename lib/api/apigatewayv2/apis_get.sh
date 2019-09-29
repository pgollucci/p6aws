######################################################################
#<
#
# Function:
#      = p6_aws_apigatewayv2_apis_get()
#
#
#
#>
######################################################################
p6_aws_apigatewayv2_apis_get() {

    p6_run_read_cmd aws apigatewayv2 get-apis "$@"
}
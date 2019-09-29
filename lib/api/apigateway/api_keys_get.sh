######################################################################
#<
#
# Function:
#      = p6_aws_apigateway_api_keys_get()
#
#
#
#>
######################################################################
p6_aws_apigateway_api_keys_get() {

    p6_run_read_cmd aws apigateway get-api-keys "$@"
}
######################################################################
#<
#
# Function:
#      = p6_aws_apigateway_api_key_delete(api_key)
#
# Arg(s):
#    api_key - 
#
#
#>
######################################################################
p6_aws_apigateway_api_key_delete() {
    local api_key="$1"
    shift 1

    p6_run_write_cmd aws apigateway delete-api-key --api-key $api_key "$@"
}
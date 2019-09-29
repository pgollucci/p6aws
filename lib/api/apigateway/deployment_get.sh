######################################################################
#<
#
# Function:
#      = p6_aws_apigateway_deployment_get(rest_api_id, deployment_id)
#
# Arg(s):
#    rest_api_id - 
#    deployment_id - 
#
#
#>
######################################################################
p6_aws_apigateway_deployment_get() {
    local rest_api_id="$1"
    local deployment_id="$2"
    shift 2

    p6_run_read_cmd aws apigateway get-deployment --rest-api-id $rest_api_id --deployment-id $deployment_id "$@"
}
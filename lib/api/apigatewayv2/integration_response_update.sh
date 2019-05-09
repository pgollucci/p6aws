p6_aws_apigatewayv2_integration_response_update() {
    local api_id="$1"
    local integration_id="$2"
    local integration_response_id="$3"
    shift 3

    p6_run_write_cmd aws apigatewayv2 update-integration-response --api-id $api_id --integration-id $integration_id --integration-response-id $integration_response_id "$@"
}

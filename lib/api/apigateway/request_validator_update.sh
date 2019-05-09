p6_aws_apigateway_request_validator_update() {
    local rest_api_id="$1"
    local request_validator_id="$2"
    shift 2

    p6_run_write_cmd aws apigateway update-request-validator --rest-api-id $rest_api_id --request-validator-id $request_validator_id "$@"
}

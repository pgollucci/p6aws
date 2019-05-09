p6_aws_apigateway_deployment_delete() {
    local rest_api_id="$1"
    local deployment_id="$2"
    shift 2

    p6_run_write_cmd aws apigateway delete-deployment --rest-api-id $rest_api_id --deployment-id $deployment_id "$@"
}

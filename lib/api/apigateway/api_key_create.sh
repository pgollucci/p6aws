p6_aws_apigateway_api_key_create() {

    p6_run_write_cmd aws apigateway create-api-key "$@"
}

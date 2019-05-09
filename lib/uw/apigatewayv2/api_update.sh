aws_apigatewayv2_schema_validation() {
        local api_id="$1"
        shift 1

    cond_log_and_run aws apigatewayv2 update-api --api-id $api_id --disable-schema-validation "$@"
}


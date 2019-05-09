p6_aws_apigatewayv2_stage_get() {
    local api_id="$1"
    local stage_name="$2"
    shift 2

    p6_run_read_cmd aws apigatewayv2 get-stage --api-id $api_id --stage-name $stage_name "$@"
}

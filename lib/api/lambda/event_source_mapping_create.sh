p6_aws_lambda_event_source_mapping_create() {
    local event_source_arn="$1"
    local function_name="$2"
    shift 2

    p6_run_write_cmd aws lambda create-event-source-mapping --event-source-arn $event_source_arn --function-name $function_name "$@"
}

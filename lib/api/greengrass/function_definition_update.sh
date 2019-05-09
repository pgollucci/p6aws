p6_aws_greengrass_function_definition_update() {
    local function_definition_id="$1"
    shift 1

    p6_log_or_run aws greengrass update-function-definition --function-definition-id $function_definition_id "$@"
}

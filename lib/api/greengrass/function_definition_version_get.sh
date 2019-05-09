p6_aws_greengrass_function_definition_version_get() {
    local function_definition_id="$1"
    local function_definition_version_id="$2"
    shift 2

    p6_log_and_run aws greengrass get-function-definition-version --function-definition-id $function_definition_id --function-definition-version-id $function_definition_version_id "$@"
}

p6_aws_glue_user_defined_function_update() {
    local database_name="$1"
    local function_name="$2"
    local function_input="$3"
    shift 3

    p6_log_or_run aws glue update-user-defined-function --database-name $database_name --function-name $function_name --function-input $function_input "$@"
}

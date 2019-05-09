p6_aws_glue_user_defined_function_create() {
    local database_name="$1"
    local function_input="$2"
    shift 2

    p6_log_or_run aws glue create-user-defined-function --database-name $database_name --function-input $function_input "$@"
}

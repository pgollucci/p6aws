p6_aws_glue_user_defined_function_get() {
    local database_name="$1"
    local function_name="$2"
    shift 2

    p6_run_read_cmd aws glue get-user-defined-function --database-name $database_name --function-name $function_name "$@"
}

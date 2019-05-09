p6_aws_glue_table_get() {
    local database_name="$1"
    local name="$2"
    shift 2

    p6_run_read_cmd aws glue get-table --database-name $database_name --name $name "$@"
}

p6_aws_glue_table_create() {
    local database_name="$1"
    local table_input="$2"
    shift 2

    p6_log_or_run aws glue create-table --database-name $database_name --table-input $table_input "$@"
}

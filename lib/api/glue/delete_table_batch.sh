p6_aws_glue_delete_table_batch() {
    local database_name="$1"
    local tables_to_delete="$2"
    shift 2

    p6_run_write_cmd aws glue batch-delete-table --database-name $database_name --tables-to-delete $tables_to_delete "$@"
}

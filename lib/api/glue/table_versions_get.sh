p6_aws_glue_table_versions_get() {
    local database_name="$1"
    local table_name="$2"
    shift 2

    p6_log_and_run aws glue get-table-versions --database-name $database_name --table-name $table_name "$@"
}

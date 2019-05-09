p6_aws_glue_tables_get() {
    local database_name="$1"
    shift 1

    p6_log_and_run aws glue get-tables --database-name $database_name "$@"
}

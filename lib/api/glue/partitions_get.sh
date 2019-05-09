p6_aws_glue_partitions_get() {
    local database_name="$1"
    local table_name="$2"
    shift 2

    p6_run_read_cmd aws glue get-partitions --database-name $database_name --table-name $table_name "$@"
}

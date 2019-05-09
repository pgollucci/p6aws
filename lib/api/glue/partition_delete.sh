p6_aws_glue_partition_delete() {
    local database_name="$1"
    local table_name="$2"
    local partition_values="$3"
    shift 3

    p6_run_write_cmd aws glue delete-partition --database-name $database_name --table-name $table_name --partition-values $partition_values "$@"
}

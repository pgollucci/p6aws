p6_aws_glue_delete_partition_batch() {
    local database_name="$1"
    local table_name="$2"
    local partitions_to_delete="$3"
    shift 3

    p6_run_write_cmd aws glue batch-delete-partition --database-name $database_name --table-name $table_name --partitions-to-delete $partitions_to_delete "$@"
}

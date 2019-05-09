p6_aws_glue_create_partition_batch() {
    local database_name="$1"
    local table_name="$2"
    local partition_input_list="$3"
    shift 3

    p6_log_or_run aws glue batch-create-partition --database-name $database_name --table-name $table_name --partition-input-list $partition_input_list "$@"
}

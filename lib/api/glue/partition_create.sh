p6_aws_glue_partition_create() {
    local database_name="$1"
    local table_name="$2"
    local partition_input="$3"
    shift 3

    p6_log_or_run aws glue create-partition --database-name $database_name --table-name $table_name --partition-input $partition_input "$@"
}

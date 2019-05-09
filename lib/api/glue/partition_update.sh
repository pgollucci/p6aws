p6_aws_glue_partition_update() {
    local database_name="$1"
    local table_name="$2"
    local partition_value_list="$3"
    local partition_input="$4"
    shift 4

    p6_run_write_cmd aws glue update-partition --database-name $database_name --table-name $table_name --partition-value-list $partition_value_list --partition-input $partition_input "$@"
}

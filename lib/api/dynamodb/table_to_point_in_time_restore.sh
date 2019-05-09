p6_aws_dynamodb_table_to_point_in_time_restore() {
    local source_table_name="$1"
    local target_table_name="$2"
    shift 2

    p6_log_or_run aws dynamodb restore-table-to-point-in-time --source-table-name $source_table_name --target-table-name $target_table_name "$@"
}

p6_aws_dynamodb_table_update() {
    local table_name="$1"
    shift 1

    p6_log_or_run aws dynamodb update-table --table-name $table_name "$@"
}

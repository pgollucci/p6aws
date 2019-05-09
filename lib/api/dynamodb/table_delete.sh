p6_aws_dynamodb_table_delete() {
    local table_name="$1"
    shift 1

    p6_log_or_run aws dynamodb delete-table --table-name $table_name "$@"
}

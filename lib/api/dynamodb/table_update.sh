p6_aws_dynamodb_table_update() {
    local table_name="$1"
    shift 1

    p6_run_write_cmd aws dynamodb update-table --table-name $table_name "$@"
}

p6_aws_dynamodb_item_update() {
    local table_name="$1"
    local key="$2"
    shift 2

    p6_run_write_cmd aws dynamodb update-item --table-name $table_name --key $key "$@"
}

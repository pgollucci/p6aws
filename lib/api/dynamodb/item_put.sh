p6_aws_dynamodb_item_put() {
    local table_name="$1"
    local item="$2"
    shift 2

    p6_run_write_cmd aws dynamodb put-item --table-name $table_name --item $item "$@"
}

p6_aws_dynamodb_item_put() {
    local table_name="$1"
    local item="$2"
    shift 2

    p6_log_or_run aws dynamodb put-item --table-name $table_name --item $item "$@"
}

p6_aws_dynamodb_item_delete() {
    local table_name="$1"
    local key="$2"
    shift 2

    p6_log_or_run aws dynamodb delete-item --table-name $table_name --key $key "$@"
}

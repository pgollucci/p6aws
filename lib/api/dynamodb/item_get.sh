p6_aws_dynamodb_item_get() {
    local table_name="$1"
    local key="$2"
    shift 2

    p6_log_and_run aws dynamodb get-item --table-name $table_name --key $key "$@"
}

p6_aws_dynamodb_write_items_transact() {
    local transact_items="$1"
    shift 1

    p6_run_write_cmd aws dynamodb transact-write-items --transact-items $transact_items "$@"
}

p6_aws_dynamodb_write_item_batch() {
    local request_items="$1"
    shift 1

    p6_run_write_cmd aws dynamodb batch-write-item --request-items $request_items "$@"
}

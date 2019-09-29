######################################################################
#<
#
# Function:
#      = p6_aws_dynamodb_get_item_batch(request_items)
#
# Arg(s):
#    request_items - 
#
#
#>
######################################################################
p6_aws_dynamodb_get_item_batch() {
    local request_items="$1"
    shift 1

    p6_run_read_cmd aws dynamodb batch-get-item --request-items $request_items "$@"
}
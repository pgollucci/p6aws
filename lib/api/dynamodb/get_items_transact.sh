######################################################################
#<
#
# Function:
#	p6_aws_dynamodb_get_items_transact(transact_items)
#
#  Args:
#	transact_items - 
#
#>
######################################################################
p6_aws_dynamodb_get_items_transact() {
    local transact_items="$1"
    shift 1

    p6_run_read_cmd aws dynamodb transact-get-items --transact-items $transact_items "$@"
}
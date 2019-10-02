######################################################################
#<
#
# Function:
#	p6_aws_dynamodb_item_delete(table_name, key)
#
#  Args:
#	table_name - 
#	key - 
#
#>
######################################################################
p6_aws_dynamodb_item_delete() {
    local table_name="$1"
    local key="$2"
    shift 2

    p6_run_write_cmd aws dynamodb delete-item --table-name $table_name --key $key "$@"
}
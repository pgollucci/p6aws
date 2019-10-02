######################################################################
#<
#
# Function:
#	p6_aws_dynamodb_item_get(table_name, key)
#
#  Args:
#	table_name - 
#	key - 
#
#>
######################################################################
p6_aws_dynamodb_item_get() {
    local table_name="$1"
    local key="$2"
    shift 2

    p6_run_read_cmd aws dynamodb get-item --table-name $table_name --key $key "$@"
}
######################################################################
#<
#
# Function:
#      = p6_aws_dynamodb_table_delete(table_name)
#
# Arg(s):
#    table_name - 
#
#
#>
######################################################################
p6_aws_dynamodb_table_delete() {
    local table_name="$1"
    shift 1

    p6_run_write_cmd aws dynamodb delete-table --table-name $table_name "$@"
}
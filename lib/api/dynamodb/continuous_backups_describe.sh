######################################################################
#<
#
# Function:
#	p6_aws_dynamodb_continuous_backups_describe(table_name)
#
#  Args:
#	table_name - 
#
#>
######################################################################
p6_aws_dynamodb_continuous_backups_describe() {
    local table_name="$1"
    shift 1

    p6_run_read_cmd aws dynamodb describe-continuous-backups --table-name $table_name "$@"
}
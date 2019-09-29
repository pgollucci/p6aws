######################################################################
#<
#
# Function:
#      = p6_aws_dynamodb_tables_list()
#
#
#
#>
######################################################################
p6_aws_dynamodb_tables_list() {

    p6_run_read_cmd aws dynamodb list-tables "$@"
}
######################################################################
#<
#
# Function:
#	p6_aws_athena_query_executions_list()
#
#>
######################################################################
p6_aws_athena_query_executions_list() {

    p6_run_read_cmd aws athena list-query-executions "$@"
}
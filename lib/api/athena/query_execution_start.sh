######################################################################
#<
#
# Function:
#	p6_aws_athena_query_execution_start(query_string)
#
#  Args:
#	query_string - 
#
#>
######################################################################
p6_aws_athena_query_execution_start() {
    local query_string="$1"
    shift 1

    p6_run_write_cmd aws athena start-query-execution --query-string $query_string "$@"
}
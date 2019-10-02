######################################################################
#<
#
# Function:
#	p6_aws_athena_named_queries_list()
#
#>
######################################################################
p6_aws_athena_named_queries_list() {

    p6_run_read_cmd aws athena list-named-queries "$@"
}
######################################################################
#<
#
# Function:
#	p6_aws_logs_queries_describe()
#
#>
######################################################################
p6_aws_logs_queries_describe() {

    p6_run_read_cmd aws logs describe-queries "$@"
}
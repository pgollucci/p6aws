######################################################################
#<
#
# Function:
#	p6_aws_docdb_events_describe()
#
#>
######################################################################
p6_aws_docdb_events_describe() {

    p6_run_read_cmd aws docdb describe-events "$@"
}
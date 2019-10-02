######################################################################
#<
#
# Function:
#	p6_aws_docdb_event_categories_describe()
#
#>
######################################################################
p6_aws_docdb_event_categories_describe() {

    p6_run_read_cmd aws docdb describe-event-categories "$@"
}
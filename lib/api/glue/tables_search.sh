######################################################################
#<
#
# Function:
#	p6_aws_glue_tables_search()
#
#>
######################################################################
p6_aws_glue_tables_search() {

    p6_run_write_cmd aws glue search-tables "$@"
}
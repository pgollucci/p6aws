######################################################################
#<
#
# Function:
#	p6_aws_workdocs_groups_describe(search_query)
#
#  Args:
#	search_query - 
#
#>
######################################################################
p6_aws_workdocs_groups_describe() {
    local search_query="$1"
    shift 1

    p6_run_read_cmd aws workdocs describe-groups --search-query $search_query "$@"
}
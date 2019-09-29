######################################################################
#<
#
# Function:
#      = p6_aws_waf_sql_injection_match_sets_list()
#
#
#
#>
######################################################################
p6_aws_waf_sql_injection_match_sets_list() {

    p6_run_read_cmd aws waf list-sql-injection-match-sets "$@"
}
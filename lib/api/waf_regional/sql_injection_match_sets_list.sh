######################################################################
#<
#
# Function:
#	p6_aws_waf_regional_sql_injection_match_sets_list()
#
#>
######################################################################
p6_aws_waf_regional_sql_injection_match_sets_list() {

    p6_run_read_cmd aws waf-regional list-sql-injection-match-sets "$@"
}
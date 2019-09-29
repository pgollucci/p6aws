######################################################################
#<
#
# Function:
#      = p6_aws_waf_regional_regex_match_sets_list()
#
#
#
#>
######################################################################
p6_aws_waf_regional_regex_match_sets_list() {

    p6_run_read_cmd aws waf-regional list-regex-match-sets "$@"
}
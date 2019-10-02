######################################################################
#<
#
# Function:
#	p6_aws_waf_xss_match_sets_list()
#
#>
######################################################################
p6_aws_waf_xss_match_sets_list() {

    p6_run_read_cmd aws waf list-xss-match-sets "$@"
}
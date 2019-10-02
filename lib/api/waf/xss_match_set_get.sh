######################################################################
#<
#
# Function:
#	p6_aws_waf_xss_match_set_get(xss_match_set_id)
#
#  Args:
#	xss_match_set_id - 
#
#>
######################################################################
p6_aws_waf_xss_match_set_get() {
    local xss_match_set_id="$1"
    shift 1

    p6_run_read_cmd aws waf get-xss-match-set --xss-match-set-id $xss_match_set_id "$@"
}
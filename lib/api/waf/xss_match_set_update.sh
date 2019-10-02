######################################################################
#<
#
# Function:
#	p6_aws_waf_xss_match_set_update(xss_match_set_id, change_token, updates)
#
#  Args:
#	xss_match_set_id - 
#	change_token - 
#	updates - 
#
#>
######################################################################
p6_aws_waf_xss_match_set_update() {
    local xss_match_set_id="$1"
    local change_token="$2"
    local updates="$3"
    shift 3

    p6_run_write_cmd aws waf update-xss-match-set --xss-match-set-id $xss_match_set_id --change-token $change_token --updates $updates "$@"
}
######################################################################
#<
#
# Function:
#      = p6_aws_waf_regional_regex_match_set_get(regex_match_set_id)
#
# Arg(s):
#    regex_match_set_id - 
#
#
#>
######################################################################
p6_aws_waf_regional_regex_match_set_get() {
    local regex_match_set_id="$1"
    shift 1

    p6_run_read_cmd aws waf-regional get-regex-match-set --regex-match-set-id $regex_match_set_id "$@"
}
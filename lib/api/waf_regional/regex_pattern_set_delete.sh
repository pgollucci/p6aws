######################################################################
#<
#
# Function:
#	p6_aws_waf_regional_regex_pattern_set_delete(regex_pattern_set_id, change_token)
#
#  Args:
#	regex_pattern_set_id - 
#	change_token - 
#
#>
######################################################################
p6_aws_waf_regional_regex_pattern_set_delete() {
    local regex_pattern_set_id="$1"
    local change_token="$2"
    shift 2

    p6_run_write_cmd aws waf-regional delete-regex-pattern-set --regex-pattern-set-id $regex_pattern_set_id --change-token $change_token "$@"
}
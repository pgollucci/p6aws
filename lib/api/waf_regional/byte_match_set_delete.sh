######################################################################
#<
#
# Function:
#	p6_aws_waf_regional_byte_match_set_delete(byte_match_set_id, change_token)
#
#  Args:
#	byte_match_set_id - 
#	change_token - 
#
#>
######################################################################
p6_aws_waf_regional_byte_match_set_delete() {
    local byte_match_set_id="$1"
    local change_token="$2"
    shift 2

    p6_run_write_cmd aws waf-regional delete-byte-match-set --byte-match-set-id $byte_match_set_id --change-token $change_token "$@"
}
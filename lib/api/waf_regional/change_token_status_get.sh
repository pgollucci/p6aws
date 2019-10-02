######################################################################
#<
#
# Function:
#	p6_aws_waf_regional_change_token_status_get(change_token)
#
#  Args:
#	change_token - 
#
#>
######################################################################
p6_aws_waf_regional_change_token_status_get() {
    local change_token="$1"
    shift 1

    p6_run_read_cmd aws waf-regional get-change-token-status --change-token $change_token "$@"
}
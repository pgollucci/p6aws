######################################################################
#<
#
# Function:
#      = p6_aws_waf_regional_change_token_get()
#
#
#
#>
######################################################################
p6_aws_waf_regional_change_token_get() {

    p6_run_read_cmd aws waf-regional get-change-token "$@"
}
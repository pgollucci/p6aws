######################################################################
#<
#
# Function:
#      = p6_aws_waf_change_token_status_get(change_token)
#
# Arg(s):
#    change_token - 
#
#
#>
######################################################################
p6_aws_waf_change_token_status_get() {
    local change_token="$1"
    shift 1

    p6_run_read_cmd aws waf get-change-token-status --change-token $change_token "$@"
}
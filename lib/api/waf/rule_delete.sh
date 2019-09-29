######################################################################
#<
#
# Function:
#      = p6_aws_waf_rule_delete(rule_id, change_token)
#
# Arg(s):
#    rule_id - 
#    change_token - 
#
#
#>
######################################################################
p6_aws_waf_rule_delete() {
    local rule_id="$1"
    local change_token="$2"
    shift 2

    p6_run_write_cmd aws waf delete-rule --rule-id $rule_id --change-token $change_token "$@"
}
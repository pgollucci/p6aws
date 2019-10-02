######################################################################
#<
#
# Function:
#	p6_aws_waf_regional_rule_get(rule_id)
#
#  Args:
#	rule_id - 
#
#>
######################################################################
p6_aws_waf_regional_rule_get() {
    local rule_id="$1"
    shift 1

    p6_run_read_cmd aws waf-regional get-rule --rule-id $rule_id "$@"
}
######################################################################
#<
#
# Function:
#	p6_aws_ses_receipt_rule_describe(rule_set_name, rule_name)
#
#  Args:
#	rule_set_name - 
#	rule_name - 
#
#>
######################################################################
p6_aws_ses_receipt_rule_describe() {
    local rule_set_name="$1"
    local rule_name="$2"
    shift 2

    p6_run_read_cmd aws ses describe-receipt-rule --rule-set-name $rule_set_name --rule-name $rule_name "$@"
}
######################################################################
#<
#
# Function:
#      = p6_aws_ses_receipt_rule_delete(rule_set_name, rule_name)
#
# Arg(s):
#    rule_set_name - 
#    rule_name - 
#
#
#>
######################################################################
p6_aws_ses_receipt_rule_delete() {
    local rule_set_name="$1"
    local rule_name="$2"
    shift 2

    p6_run_write_cmd aws ses delete-receipt-rule --rule-set-name $rule_set_name --rule-name $rule_name "$@"
}
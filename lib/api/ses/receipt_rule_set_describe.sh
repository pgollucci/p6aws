######################################################################
#<
#
# Function:
#      = p6_aws_ses_receipt_rule_set_describe(rule_set_name)
#
# Arg(s):
#    rule_set_name - 
#
#
#>
######################################################################
p6_aws_ses_receipt_rule_set_describe() {
    local rule_set_name="$1"
    shift 1

    p6_run_read_cmd aws ses describe-receipt-rule-set --rule-set-name $rule_set_name "$@"
}
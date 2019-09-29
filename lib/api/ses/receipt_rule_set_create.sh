######################################################################
#<
#
# Function:
#      = p6_aws_ses_receipt_rule_set_create(rule_set_name)
#
# Arg(s):
#    rule_set_name - 
#
#
#>
######################################################################
p6_aws_ses_receipt_rule_set_create() {
    local rule_set_name="$1"
    shift 1

    p6_run_write_cmd aws ses create-receipt-rule-set --rule-set-name $rule_set_name "$@"
}
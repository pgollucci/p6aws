######################################################################
#<
#
# Function:
#	p6_aws_ses_active_receipt_rule_set_set()
#
#>
######################################################################
p6_aws_ses_active_receipt_rule_set_set() {

    p6_run_write_cmd aws ses set-active-receipt-rule-set "$@"
}
######################################################################
#<
#
# Function:
#      = p6_aws_ses_active_receipt_rule_set_describe()
#
#
#
#>
######################################################################
p6_aws_ses_active_receipt_rule_set_describe() {

    p6_run_read_cmd aws ses describe-active-receipt-rule-set "$@"
}
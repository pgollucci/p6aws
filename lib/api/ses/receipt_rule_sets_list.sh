######################################################################
#<
#
# Function:
#	p6_aws_ses_receipt_rule_sets_list()
#
#>
######################################################################
p6_aws_ses_receipt_rule_sets_list() {

    p6_run_read_cmd aws ses list-receipt-rule-sets "$@"
}
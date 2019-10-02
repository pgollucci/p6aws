######################################################################
#<
#
# Function:
#	p6_aws_ses_receipt_filters_list()
#
#>
######################################################################
p6_aws_ses_receipt_filters_list() {

    p6_run_read_cmd aws ses list-receipt-filters "$@"
}
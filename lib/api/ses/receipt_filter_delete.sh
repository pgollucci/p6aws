######################################################################
#<
#
# Function:
#	p6_aws_ses_receipt_filter_delete(filter_name)
#
#  Args:
#	filter_name - 
#
#>
######################################################################
p6_aws_ses_receipt_filter_delete() {
    local filter_name="$1"
    shift 1

    p6_run_write_cmd aws ses delete-receipt-filter --filter-name $filter_name "$@"
}
######################################################################
#<
#
# Function:
#      = p6_aws_ses_receipt_filter_create(filter)
#
# Arg(s):
#    filter - 
#
#
#>
######################################################################
p6_aws_ses_receipt_filter_create() {
    local filter="$1"
    shift 1

    p6_run_write_cmd aws ses create-receipt-filter --filter $filter "$@"
}
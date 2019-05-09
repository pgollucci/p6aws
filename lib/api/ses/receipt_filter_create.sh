p6_aws_ses_receipt_filter_create() {
    local filter="$1"
    shift 1

    p6_log_or_run aws ses create-receipt-filter --filter $filter "$@"
}

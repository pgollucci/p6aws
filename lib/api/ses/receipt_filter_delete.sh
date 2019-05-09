p6_aws_ses_receipt_filter_delete() {
    local filter_name="$1"
    shift 1

    p6_log_or_run aws ses delete-receipt-filter --filter-name $filter_name "$@"
}

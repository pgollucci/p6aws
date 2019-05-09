p6_aws_ses_receipt_rule_delete() {
    local rule_set_name="$1"
    local rule_name="$2"
    shift 2

    p6_log_or_run aws ses delete-receipt-rule --rule-set-name $rule_set_name --rule-name $rule_name "$@"
}

p6_aws_ses_receipt_rule_set_create() {
    local rule_set_name="$1"
    shift 1

    p6_log_or_run aws ses create-receipt-rule-set --rule-set-name $rule_set_name "$@"
}

p6_aws_ses_receipt_rule_create() {
    local rule_set_name="$1"
    local rule="$2"
    shift 2

    p6_log_or_run aws ses create-receipt-rule --rule-set-name $rule_set_name --rule $rule "$@"
}

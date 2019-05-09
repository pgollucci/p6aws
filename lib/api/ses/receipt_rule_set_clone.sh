p6_aws_ses_receipt_rule_set_clone() {
    local rule_set_name="$1"
    local original_rule_set_name="$2"
    shift 2

    p6_log_or_run aws ses clone-receipt-rule-set --rule-set-name $rule_set_name --original-rule-set-name $original_rule_set_name "$@"
}

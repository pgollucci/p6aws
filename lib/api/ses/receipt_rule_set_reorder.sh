p6_aws_ses_receipt_rule_set_reorder() {
    local rule_set_name="$1"
    local rule_names="$2"
    shift 2

    p6_run_write_cmd aws ses reorder-receipt-rule-set --rule-set-name $rule_set_name --rule-names $rule_names "$@"
}

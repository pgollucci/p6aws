p6_aws_ses_receipt_rule_set_delete() {
    local rule_set_name="$1"
    shift 1

    p6_run_write_cmd aws ses delete-receipt-rule-set --rule-set-name $rule_set_name "$@"
}

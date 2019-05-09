p6_aws_elbv2_rule_priorities_set() {
    local rule_priorities="$1"
    shift 1

    p6_log_or_run aws elbv2 set-rule-priorities --rule-priorities $rule_priorities "$@"
}

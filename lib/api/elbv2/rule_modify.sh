p6_aws_elbv2_rule_modify() {
    local rule_arn="$1"
    shift 1

    p6_log_or_run aws elbv2 modify-rule --rule-arn $rule_arn "$@"
}

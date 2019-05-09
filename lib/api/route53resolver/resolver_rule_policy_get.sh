p6_aws_route53resolver_resolver_rule_policy_get() {
    local arn="$1"
    shift 1

    p6_log_and_run aws route53resolver get-resolver-rule-policy --arn $arn "$@"
}

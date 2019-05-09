p6_aws_route53resolver_resolver_rule_policy_put() {
    local arn="$1"
    local resolver_rule_policy="$2"
    shift 2

    p6_log_or_run aws route53resolver put-resolver-rule-policy --arn $arn --resolver-rule-policy $resolver_rule_policy "$@"
}

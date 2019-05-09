p6_aws_route53resolver_resolver_rule_associate() {
    local resolver_rule_id="$1"
    local vpc_id="$2"
    shift 2

    p6_log_or_run aws route53resolver associate-resolver-rule --resolver-rule-id $resolver_rule_id --vpc-id $vpc_id "$@"
}

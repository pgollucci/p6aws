p6_aws_route53resolver_resolver_rule_association_get() {
    local resolver_rule_association_id="$1"
    shift 1

    p6_log_and_run aws route53resolver get-resolver-rule-association --resolver-rule-association-id $resolver_rule_association_id "$@"
}

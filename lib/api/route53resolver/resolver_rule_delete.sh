p6_aws_route53resolver_resolver_rule_delete() {
    local resolver_rule_id="$1"
    shift 1

    p6_log_or_run aws route53resolver delete-resolver-rule --resolver-rule-id $resolver_rule_id "$@"
}

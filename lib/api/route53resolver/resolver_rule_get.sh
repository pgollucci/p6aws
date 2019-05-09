p6_aws_route53resolver_resolver_rule_get() {
    local resolver_rule_id="$1"
    shift 1

    p6_log_and_run aws route53resolver get-resolver-rule --resolver-rule-id $resolver_rule_id "$@"
}

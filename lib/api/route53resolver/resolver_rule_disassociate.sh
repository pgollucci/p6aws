p6_aws_route53resolver_resolver_rule_disassociate() {
    local vpc_id="$1"
    local resolver_rule_id="$2"
    shift 2

    p6_run_write_cmd aws route53resolver disassociate-resolver-rule --vpc-id $vpc_id --resolver-rule-id $resolver_rule_id "$@"
}

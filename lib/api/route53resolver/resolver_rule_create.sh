p6_aws_route53resolver_resolver_rule_create() {
    local creator_request_id="$1"
    local rule_type="$2"
    local domain_name="$3"
    shift 3

    p6_run_write_cmd aws route53resolver create-resolver-rule --creator-request-id $creator_request_id --rule-type $rule_type --domain-name $domain_name "$@"
}

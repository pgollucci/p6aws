######################################################################
#<
#
# Function:
#      = p6_aws_route53resolver_resolver_rule_update(resolver_rule_id, config)
#
# Arg(s):
#    resolver_rule_id - 
#    config - 
#
#
#>
######################################################################
p6_aws_route53resolver_resolver_rule_update() {
    local resolver_rule_id="$1"
    local config="$2"
    shift 2

    p6_run_write_cmd aws route53resolver update-resolver-rule --resolver-rule-id $resolver_rule_id --config $config "$@"
}
######################################################################
#<
#
# Function:
#      = p6_aws_route53resolver_resolver_rule_associate(resolver_rule_id, vpc_id)
#
# Arg(s):
#    resolver_rule_id - 
#    vpc_id - 
#
#
#>
######################################################################
p6_aws_route53resolver_resolver_rule_associate() {
    local resolver_rule_id="$1"
    local vpc_id="$2"
    shift 2

    p6_run_write_cmd aws route53resolver associate-resolver-rule --resolver-rule-id $resolver_rule_id --vpc-id $vpc_id "$@"
}
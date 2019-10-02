######################################################################
#<
#
# Function:
#	p6_aws_route53resolver_resolver_rule_association_get(resolver_rule_association_id)
#
#  Args:
#	resolver_rule_association_id - 
#
#>
######################################################################
p6_aws_route53resolver_resolver_rule_association_get() {
    local resolver_rule_association_id="$1"
    shift 1

    p6_run_read_cmd aws route53resolver get-resolver-rule-association --resolver-rule-association-id $resolver_rule_association_id "$@"
}
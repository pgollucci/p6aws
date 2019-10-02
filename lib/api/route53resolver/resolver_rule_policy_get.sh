######################################################################
#<
#
# Function:
#	p6_aws_route53resolver_resolver_rule_policy_get(arn)
#
#  Args:
#	arn - 
#
#>
######################################################################
p6_aws_route53resolver_resolver_rule_policy_get() {
    local arn="$1"
    shift 1

    p6_run_read_cmd aws route53resolver get-resolver-rule-policy --arn $arn "$@"
}
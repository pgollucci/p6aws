######################################################################
#<
#
# Function:
#	p6_aws_elbv2_rule_modify(rule_arn)
#
#  Args:
#	rule_arn - 
#
#>
######################################################################
p6_aws_elbv2_rule_modify() {
    local rule_arn="$1"
    shift 1

    p6_run_write_cmd aws elbv2 modify-rule --rule-arn $rule_arn "$@"
}
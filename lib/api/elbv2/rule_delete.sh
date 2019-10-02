######################################################################
#<
#
# Function:
#	p6_aws_elbv2_rule_delete(rule_arn)
#
#  Args:
#	rule_arn - 
#
#>
######################################################################
p6_aws_elbv2_rule_delete() {
    local rule_arn="$1"
    shift 1

    p6_run_write_cmd aws elbv2 delete-rule --rule-arn $rule_arn "$@"
}
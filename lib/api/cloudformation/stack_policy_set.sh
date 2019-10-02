######################################################################
#<
#
# Function:
#	p6_aws_cloudformation_stack_policy_set(stack_name)
#
#  Args:
#	stack_name - 
#
#>
######################################################################
p6_aws_cloudformation_stack_policy_set() {
    local stack_name="$1"
    shift 1

    p6_run_write_cmd aws cloudformation set-stack-policy --stack-name $stack_name "$@"
}
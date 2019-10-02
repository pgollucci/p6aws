######################################################################
#<
#
# Function:
#	p6_aws_cloudformation_stack_set_describe(stack_set_name)
#
#  Args:
#	stack_set_name - 
#
#>
######################################################################
p6_aws_cloudformation_stack_set_describe() {
    local stack_set_name="$1"
    shift 1

    p6_run_read_cmd aws cloudformation describe-stack-set --stack-set-name $stack_set_name "$@"
}
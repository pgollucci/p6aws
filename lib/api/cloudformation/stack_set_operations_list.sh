######################################################################
#<
#
# Function:
#	p6_aws_cloudformation_stack_set_operations_list(stack_set_name)
#
#  Args:
#	stack_set_name - 
#
#>
######################################################################
p6_aws_cloudformation_stack_set_operations_list() {
    local stack_set_name="$1"
    shift 1

    p6_run_read_cmd aws cloudformation list-stack-set-operations --stack-set-name $stack_set_name "$@"
}
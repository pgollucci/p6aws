######################################################################
#<
#
# Function:
#	p6_aws_cloudformation_update_rollback_continue(stack_name)
#
#  Args:
#	stack_name - 
#
#>
######################################################################
p6_aws_cloudformation_update_rollback_continue() {
    local stack_name="$1"
    shift 1

    p6_run_write_cmd aws cloudformation continue-update-rollback --stack-name $stack_name "$@"
}
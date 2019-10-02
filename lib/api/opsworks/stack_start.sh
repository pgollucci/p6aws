######################################################################
#<
#
# Function:
#	p6_aws_opsworks_stack_start(stack_id)
#
#  Args:
#	stack_id - 
#
#>
######################################################################
p6_aws_opsworks_stack_start() {
    local stack_id="$1"
    shift 1

    p6_run_write_cmd aws opsworks start-stack --stack-id $stack_id "$@"
}
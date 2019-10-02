######################################################################
#<
#
# Function:
#	p6_aws_cloudformation_stack_drift_detect(stack_name)
#
#  Args:
#	stack_name - 
#
#>
######################################################################
p6_aws_cloudformation_stack_drift_detect() {
    local stack_name="$1"
    shift 1

    p6_run_write_cmd aws cloudformation detect-stack-drift --stack-name $stack_name "$@"
}
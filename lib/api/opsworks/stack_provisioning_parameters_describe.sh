######################################################################
#<
#
# Function:
#	p6_aws_opsworks_stack_provisioning_parameters_describe(stack_id)
#
#  Args:
#	stack_id - 
#
#>
######################################################################
p6_aws_opsworks_stack_provisioning_parameters_describe() {
    local stack_id="$1"
    shift 1

    p6_run_read_cmd aws opsworks describe-stack-provisioning-parameters --stack-id $stack_id "$@"
}
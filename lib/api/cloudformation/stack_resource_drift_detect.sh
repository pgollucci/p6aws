######################################################################
#<
#
# Function:
#	p6_aws_cloudformation_stack_resource_drift_detect(stack_name, logical_resource_id)
#
#  Args:
#	stack_name - 
#	logical_resource_id - 
#
#>
######################################################################
p6_aws_cloudformation_stack_resource_drift_detect() {
    local stack_name="$1"
    local logical_resource_id="$2"
    shift 2

    p6_run_write_cmd aws cloudformation detect-stack-resource-drift --stack-name $stack_name --logical-resource-id $logical_resource_id "$@"
}
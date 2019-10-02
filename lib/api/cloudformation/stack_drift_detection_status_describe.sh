######################################################################
#<
#
# Function:
#	p6_aws_cloudformation_stack_drift_detection_status_describe(stack_drift_detection_id)
#
#  Args:
#	stack_drift_detection_id - 
#
#>
######################################################################
p6_aws_cloudformation_stack_drift_detection_status_describe() {
    local stack_drift_detection_id="$1"
    shift 1

    p6_run_read_cmd aws cloudformation describe-stack-drift-detection-status --stack-drift-detection-id $stack_drift_detection_id "$@"
}
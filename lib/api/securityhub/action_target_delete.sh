######################################################################
#<
#
# Function:
#	p6_aws_securityhub_action_target_delete(action_target_arn)
#
#  Args:
#	action_target_arn - 
#
#>
######################################################################
p6_aws_securityhub_action_target_delete() {
    local action_target_arn="$1"
    shift 1

    p6_run_read_cmd aws securityhub delete-action-target --action-target-arn $action_target_arn "$@"
}
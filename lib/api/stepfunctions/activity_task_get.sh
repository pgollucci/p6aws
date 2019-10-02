######################################################################
#<
#
# Function:
#	p6_aws_stepfunctions_activity_task_get(activity_arn)
#
#  Args:
#	activity_arn - 
#
#>
######################################################################
p6_aws_stepfunctions_activity_task_get() {
    local activity_arn="$1"
    shift 1

    p6_run_read_cmd aws stepfunctions get-activity-task --activity-arn $activity_arn "$@"
}
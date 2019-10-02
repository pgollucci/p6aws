######################################################################
#<
#
# Function:
#	p6_aws_iot_audit_task_describe(task_id)
#
#  Args:
#	task_id - 
#
#>
######################################################################
p6_aws_iot_audit_task_describe() {
    local task_id="$1"
    shift 1

    p6_run_read_cmd aws iot describe-audit-task --task-id $task_id "$@"
}
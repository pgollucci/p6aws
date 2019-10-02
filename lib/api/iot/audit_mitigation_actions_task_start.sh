######################################################################
#<
#
# Function:
#	p6_aws_iot_audit_mitigation_actions_task_start(task_id, target, audit_check_to_actions_mapping)
#
#  Args:
#	task_id - 
#	target - 
#	audit_check_to_actions_mapping - 
#
#>
######################################################################
p6_aws_iot_audit_mitigation_actions_task_start() {
    local task_id="$1"
    local target="$2"
    local audit_check_to_actions_mapping="$3"
    shift 3

    p6_run_write_cmd aws iot start-audit-mitigation-actions-task --task-id $task_id --target $target --audit-check-to-actions-mapping $audit_check_to_actions_mapping "$@"
}
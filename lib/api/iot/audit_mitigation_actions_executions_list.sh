######################################################################
#<
#
# Function:
#      = p6_aws_iot_audit_mitigation_actions_executions_list(task_id, finding_id)
#
# Arg(s):
#    task_id - 
#    finding_id - 
#
#
#>
######################################################################
p6_aws_iot_audit_mitigation_actions_executions_list() {
    local task_id="$1"
    local finding_id="$2"
    shift 2

    p6_run_read_cmd aws iot list-audit-mitigation-actions-executions --task-id $task_id --finding-id $finding_id "$@"
}
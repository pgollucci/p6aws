######################################################################
#<
#
# Function:
#	p6_aws_dms_replication_task_delete(replication_task_arn)
#
#  Args:
#	replication_task_arn - 
#
#>
######################################################################
p6_aws_dms_replication_task_delete() {
    local replication_task_arn="$1"
    shift 1

    p6_run_write_cmd aws dms delete-replication-task --replication-task-arn $replication_task_arn "$@"
}
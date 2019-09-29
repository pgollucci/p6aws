######################################################################
#<
#
# Function:
#      = p6_aws_dms_replication_task_stop(replication_task_arn)
#
# Arg(s):
#    replication_task_arn - 
#
#
#>
######################################################################
p6_aws_dms_replication_task_stop() {
    local replication_task_arn="$1"
    shift 1

    p6_run_write_cmd aws dms stop-replication-task --replication-task-arn $replication_task_arn "$@"
}
######################################################################
#<
#
# Function:
#      = p6_aws_dms_replication_task_start(replication_task_arn)
#
# Arg(s):
#    replication_task_arn - 
#
#
#>
######################################################################
p6_aws_dms_replication_task_start() {
    local replication_task_arn="$1"
    shift 1

    p6_run_write_cmd aws dms start-replication-task --replication-task-arn $replication_task_arn "$@"
}
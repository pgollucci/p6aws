######################################################################
#<
#
# Function:
#      = p6_aws_dms_replication_task_modify(replication_task_arn)
#
# Arg(s):
#    replication_task_arn - 
#
#
#>
######################################################################
p6_aws_dms_replication_task_modify() {
    local replication_task_arn="$1"
    shift 1

    p6_run_write_cmd aws dms modify-replication-task --replication-task-arn $replication_task_arn "$@"
}
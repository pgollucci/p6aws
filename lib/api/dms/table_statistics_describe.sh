######################################################################
#<
#
# Function:
#	p6_aws_dms_table_statistics_describe(replication_task_arn)
#
#  Args:
#	replication_task_arn - 
#
#>
######################################################################
p6_aws_dms_table_statistics_describe() {
    local replication_task_arn="$1"
    shift 1

    p6_run_read_cmd aws dms describe-table-statistics --replication-task-arn $replication_task_arn "$@"
}
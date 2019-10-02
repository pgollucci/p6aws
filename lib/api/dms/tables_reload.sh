######################################################################
#<
#
# Function:
#	p6_aws_dms_tables_reload(replication_task_arn, tables_to_reload)
#
#  Args:
#	replication_task_arn - 
#	tables_to_reload - 
#
#>
######################################################################
p6_aws_dms_tables_reload() {
    local replication_task_arn="$1"
    local tables_to_reload="$2"
    shift 2

    p6_run_write_cmd aws dms reload-tables --replication-task-arn $replication_task_arn --tables-to-reload $tables_to_reload "$@"
}
######################################################################
#<
#
# Function:
#      = p6_aws_datasync_task_executions_list()
#
#
#
#>
######################################################################
p6_aws_datasync_task_executions_list() {

    p6_run_read_cmd aws datasync list-task-executions "$@"
}
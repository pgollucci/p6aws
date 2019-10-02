######################################################################
#<
#
# Function:
#	p6_aws_datapipeline_task_progress_report(task_id)
#
#  Args:
#	task_id - 
#
#>
######################################################################
p6_aws_datapipeline_task_progress_report() {
    local task_id="$1"
    shift 1

    p6_run_write_cmd aws datapipeline report-task-progress --task-id $task_id "$@"
}
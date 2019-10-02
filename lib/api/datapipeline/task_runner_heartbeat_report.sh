######################################################################
#<
#
# Function:
#	p6_aws_datapipeline_task_runner_heartbeat_report(taskrunner_id)
#
#  Args:
#	taskrunner_id - 
#
#>
######################################################################
p6_aws_datapipeline_task_runner_heartbeat_report() {
    local taskrunner_id="$1"
    shift 1

    p6_run_write_cmd aws datapipeline report-task-runner-heartbeat --taskrunner-id $taskrunner_id "$@"
}
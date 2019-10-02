######################################################################
#<
#
# Function:
#	p6_aws_datapipeline_for_task_poll(worker_group)
#
#  Args:
#	worker_group - 
#
#>
######################################################################
p6_aws_datapipeline_for_task_poll() {
    local worker_group="$1"
    shift 1

    p6_run_write_cmd aws datapipeline poll-for-task --worker-group $worker_group "$@"
}
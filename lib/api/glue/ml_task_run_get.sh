######################################################################
#<
#
# Function:
#	p6_aws_glue_ml_task_run_get(transform_id, task_run_id)
#
#  Args:
#	transform_id - 
#	task_run_id - 
#
#>
######################################################################
p6_aws_glue_ml_task_run_get() {
    local transform_id="$1"
    local task_run_id="$2"
    shift 2

    p6_run_read_cmd aws glue get-ml-task-run --transform-id $transform_id --task-run-id $task_run_id "$@"
}
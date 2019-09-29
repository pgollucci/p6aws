######################################################################
#<
#
# Function:
#      = p6_aws_glue_ml_evaluation_task_run_start(transform_id)
#
# Arg(s):
#    transform_id - 
#
#
#>
######################################################################
p6_aws_glue_ml_evaluation_task_run_start() {
    local transform_id="$1"
    shift 1

    p6_run_write_cmd aws glue start-ml-evaluation-task-run --transform-id $transform_id "$@"
}
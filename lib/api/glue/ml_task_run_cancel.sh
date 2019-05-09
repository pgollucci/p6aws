p6_aws_glue_ml_task_run_cancel() {
    local transform_id="$1"
    local task_run_id="$2"
    shift 2

    p6_run_write_cmd aws glue cancel-ml-task-run --transform-id $transform_id --task-run-id $task_run_id "$@"
}

p6_aws_glue_ml_task_runs_get() {
    local transform_id="$1"
    shift 1

    p6_run_read_cmd aws glue get-ml-task-runs --transform-id $transform_id "$@"
}

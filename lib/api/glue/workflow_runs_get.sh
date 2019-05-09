p6_aws_glue_workflow_runs_get() {
    local name="$1"
    shift 1

    p6_run_read_cmd aws glue get-workflow-runs --name $name "$@"
}

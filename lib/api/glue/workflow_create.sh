p6_aws_glue_workflow_create() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws glue create-workflow --name $name "$@"
}

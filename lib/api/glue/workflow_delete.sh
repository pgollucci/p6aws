p6_aws_glue_workflow_delete() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws glue delete-workflow --name $name "$@"
}

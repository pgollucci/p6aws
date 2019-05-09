p6_aws_codepipeline_pipeline_delete() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws codepipeline delete-pipeline --name $name "$@"
}

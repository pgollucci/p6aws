p6_aws_codepipeline_pipeline_executions_list() {
    local pipeline_name="$1"
    shift 1

    p6_run_read_cmd aws codepipeline list-pipeline-executions --pipeline-name $pipeline_name "$@"
}

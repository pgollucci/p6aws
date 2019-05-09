p6_aws_datapipeline_pipeline_definition_validate() {
    local pipeline_id="$1"
    local pipeline_objects="$2"
    shift 2

    p6_run_write_cmd aws datapipeline validate-pipeline-definition --pipeline-id $pipeline_id --pipeline-objects $pipeline_objects "$@"
}

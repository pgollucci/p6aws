p6_aws_datapipeline_pipeline_deactivate() {
    local pipeline_id="$1"
    shift 1

    p6_run_write_cmd aws datapipeline deactivate-pipeline --pipeline-id $pipeline_id "$@"
}

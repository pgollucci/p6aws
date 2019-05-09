p6_aws_datapipeline_tags_add() {
    local pipeline_id="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws datapipeline add-tags --pipeline-id $pipeline_id --tags $tags "$@"
}

p6_aws_datapipeline_tags_remove() {
    local pipeline_id="$1"
    local tag_keys="$2"
    shift 2

    p6_run_write_cmd aws datapipeline remove-tags --pipeline-id $pipeline_id --tag-keys $tag_keys "$@"
}

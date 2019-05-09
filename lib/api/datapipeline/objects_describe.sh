p6_aws_datapipeline_objects_describe() {
    local pipeline_id="$1"
    local object_ids="$2"
    shift 2

    p6_run_read_cmd aws datapipeline describe-objects --pipeline-id $pipeline_id --object-ids $object_ids "$@"
}

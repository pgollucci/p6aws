p6_aws_rekognition_collection_delete() {
    local collection_id="$1"
    shift 1

    p6_run_write_cmd aws rekognition delete-collection --collection-id $collection_id "$@"
}

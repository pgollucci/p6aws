p6_aws_rekognition_collection_delete() {
    local collection_id="$1"
    shift 1

    p6_log_or_run aws rekognition delete-collection --collection-id $collection_id "$@"
}

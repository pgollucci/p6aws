p6_aws_rekognition_collection_create() {
    local collection_id="$1"
    shift 1

    p6_log_or_run aws rekognition create-collection --collection-id $collection_id "$@"
}

p6_aws_rekognition_collection_describe() {
    local collection_id="$1"
    shift 1

    p6_log_and_run aws rekognition describe-collection --collection-id $collection_id "$@"
}

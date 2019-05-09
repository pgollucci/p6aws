p6_aws_rekognition_faces_by_image_search() {
    local collection_id="$1"
    shift 1

    p6_log_or_run aws rekognition search-faces-by-image --collection-id $collection_id "$@"
}

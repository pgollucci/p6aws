p6_aws_rekognition_face_search_start() {
    local video="$1"
    local collection_id="$2"
    shift 2

    p6_log_or_run aws rekognition start-face-search --video $video --collection-id $collection_id "$@"
}

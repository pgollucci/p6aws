p6_aws_rekognition_faces_delete() {
    local collection_id="$1"
    local face_ids="$2"
    shift 2

    p6_log_or_run aws rekognition delete-faces --collection-id $collection_id --face-ids $face_ids "$@"
}

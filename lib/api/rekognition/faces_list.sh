p6_aws_rekognition_faces_list() {
    local collection_id="$1"
    shift 1

    p6_run_read_cmd aws rekognition list-faces --collection-id $collection_id "$@"
}

p6_aws_rekognition_person_tracking_start() {
    local video="$1"
    shift 1

    p6_log_or_run aws rekognition start-person-tracking --video $video "$@"
}

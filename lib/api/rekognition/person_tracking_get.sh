p6_aws_rekognition_person_tracking_get() {
    local job_id="$1"
    shift 1

    p6_log_and_run aws rekognition get-person-tracking --job-id $job_id "$@"
}

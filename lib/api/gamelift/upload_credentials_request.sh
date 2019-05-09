p6_aws_gamelift_upload_credentials_request() {
    local build_id="$1"
    shift 1

    p6_log_or_run aws gamelift request-upload-credentials --build-id $build_id "$@"
}

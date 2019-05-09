p6_aws_gamelift_upload_credentials_request() {
    local build_id="$1"
    shift 1

    p6_run_write_cmd aws gamelift request-upload-credentials --build-id $build_id "$@"
}

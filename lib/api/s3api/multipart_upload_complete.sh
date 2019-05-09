p6_aws_s3api_multipart_upload_complete() {
    local bucket="$1"
    local key="$2"
    local upload_id="$3"
    shift 3

    p6_log_or_run aws s3api complete-multipart-upload --bucket $bucket --key $key --upload-id $upload_id "$@"
}

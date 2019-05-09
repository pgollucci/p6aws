p6_aws_s3api_bucket_encryption_get() {
    local bucket="$1"
    shift 1

    p6_log_and_run aws s3api get-bucket-encryption --bucket $bucket "$@"
}

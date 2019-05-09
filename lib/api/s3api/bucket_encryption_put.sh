p6_aws_s3api_bucket_encryption_put() {
    local bucket="$1"
    local server_side_encryption_configuration="$2"
    shift 2

    p6_log_or_run aws s3api put-bucket-encryption --bucket $bucket --server-side-encryption-configuration $server_side_encryption_configuration "$@"
}

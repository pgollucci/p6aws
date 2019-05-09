p6_aws_s3api_bucket_acl_put() {
    local bucket="$1"
    shift 1

    p6_log_or_run aws s3api put-bucket-acl --bucket $bucket "$@"
}

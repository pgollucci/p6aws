p6_aws_s3api_bucket_tagging_put() {
    local bucket="$1"
    local tagging="$2"
    shift 2

    p6_log_or_run aws s3api put-bucket-tagging --bucket $bucket --tagging $tagging "$@"
}

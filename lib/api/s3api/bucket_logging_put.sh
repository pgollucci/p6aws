p6_aws_s3api_bucket_logging_put() {
    local bucket="$1"
    local bucket_logging_status="$2"
    shift 2

    p6_log_or_run aws s3api put-bucket-logging --bucket $bucket --bucket-logging-status $bucket_logging_status "$@"
}
